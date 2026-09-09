--[[
    ArkInventory - Global Rules
    Patch pour WoW 2.4.3 / ArkInventory TBC

    Objectif :
      - conserver les profils ArkInventory séparés pour la disposition des sacs/barres ;
      - partager l'activation des règles personnalisées entre tous les profils ;
      - conserver les formules de règles et les IDs d'objets au niveau compte
        (ArkInventory les stocke déjà dans db.account.option.rule).

    Le patch garde db.profile.option.rule synchronisé avec un nouvel état
    db.account.option.rule[id].global_enabled afin de rester compatible avec
    le code ArkInventory existant.
]]

local PATCH_VERSION = "1.0.0"

local function Ready()
    return ArkInventory
        and ArkInventory.db
        and ArkInventory.db.account
        and ArkInventory.db.account.option
        and ArkInventory.db.account.option.rule
        and ArkInventory.db.profile
        and ArkInventory.db.profile.option
end

local function AccountRules()
    if not Ready() then
        return nil
    end
    return ArkInventory.db.account.option.rule
end

local function ProfileRules()
    if not Ready() then
        return nil
    end

    if type(ArkInventory.db.profile.option.rule) ~= "table" then
        ArkInventory.db.profile.option.rule = {}
    end

    return ArkInventory.db.profile.option.rule
end

local function MigrateRules()
    if not Ready() then
        return
    end

    local account = AccountRules()
    local profile = ProfileRules()

    -- Si le profil courant possède déjà des états de règles, on les utilise
    -- comme référence lors de la première migration.
    -- Si le profil est totalement vierge, les règles existantes sont activées
    -- afin d'éviter de tout désactiver par accident.
    local profileHasRuleState = next(profile) ~= nil

    for id, rule in pairs(account) do
        if type(id) == "number" and type(rule) == "table" then
            if rule.global_enabled == nil then
                if profileHasRuleState then
                    rule.global_enabled = profile[id] and true or false
                else
                    rule.global_enabled = true
                end
            end
        end
    end
end

local function RuleEnabled(id)
    if not Ready() then
        return false
    end

    id = tonumber(id)
    if not id then
        return false
    end

    local rule = AccountRules()[id]
    if type(rule) ~= "table" then
        return false
    end

    if rule.global_enabled == nil then
        MigrateRules()
    end

    return rule.global_enabled ~= false
end

local function SyncRule(id)
    if not Ready() then
        return
    end

    id = tonumber(id)
    if not id then
        return
    end

    local account = AccountRules()
    local profile = ProfileRules()

    if type(account[id]) ~= "table" then
        profile[id] = nil
        return
    end

    if RuleEnabled(id) then
        profile[id] = true
    else
        profile[id] = nil
    end
end

local function SyncAllRules()
    if not Ready() then
        return
    end

    MigrateRules()

    local account = AccountRules()
    local profile = ProfileRules()

    -- Nettoie les anciens états de profil dont la règle n'existe plus.
    for id in pairs(profile) do
        if type(id) == "number" and type(account[id]) ~= "table" then
            profile[id] = nil
        end
    end

    -- Le profil courant devient un simple miroir de l'état global.
    for id, rule in pairs(account) do
        if type(id) == "number" and type(rule) == "table" then
            if rule.global_enabled ~= false then
                profile[id] = true
            else
                profile[id] = nil
            end
        end
    end
end

local function SetGlobalRuleEnabled(id, enabled)
    if not Ready() then
        return
    end

    id = tonumber(id)
    if not id then
        return
    end

    local rule = AccountRules()[id]
    if type(rule) ~= "table" then
        return
    end

    rule.global_enabled = enabled and true or false
    SyncRule(id)
end

local function RefreshAfterInstall()
    if not Ready() then
        return
    end

    if ArkInventory.ItemCacheClear then
        ArkInventory.ItemCacheClear()
    end

    -- Recalcul sans rendre le patch dépendant d'une version précise de
    -- Frame_Main_Generate / Const.Window.Draw.
    if ArkInventory.Frame_Main_Generate
        and ArkInventory.Const
        and ArkInventory.Const.Window
        and ArkInventory.Const.Window.Draw
        and ArkInventory.Const.Window.Draw.Recalculate then

        pcall(
            ArkInventory.Frame_Main_Generate,
            nil,
            ArkInventory.Const.Window.Draw.Recalculate
        )
    end
end

local function InstallPatch()
    if not Ready() then
        return false
    end

    if ArkInventory.GlobalRulesPatchInstalled then
        SyncAllRules()
        return true
    end

    ArkInventory.GlobalRulesPatchInstalled = PATCH_VERSION

    -----------------------------------------------------------------------
    -- 1. Evaluation d'une règle
    -----------------------------------------------------------------------
    if ArkInventory.RuleAppliesToItem then
        local originalRuleAppliesToItem = ArkInventory.RuleAppliesToItem

        ArkInventory.RuleAppliesToItem = function(rulenum, item)
            SyncRule(rulenum)
            return originalRuleAppliesToItem(rulenum, item)
        end
    end

    -----------------------------------------------------------------------
    -- 2. Création / modification d'une règle
    --
    -- ArkInventory place temporairement l'état dans d.enabled puis le
    -- supprime avant de sauvegarder la règle au niveau compte.
    -- On capture donc cet état avant l'appel original et on le sauvegarde
    -- dans global_enabled.
    -----------------------------------------------------------------------
    if ArkInventory.RuleEntryUpdate then
        local originalRuleEntryUpdate = ArkInventory.RuleEntryUpdate

        ArkInventory.RuleEntryUpdate = function(id, data)
            local requestedEnabled

            if type(data) == "table" and data.enabled ~= nil then
                requestedEnabled = data.enabled and true or false
            elseif tonumber(id) and AccountRules()[tonumber(id)] then
                requestedEnabled = RuleEnabled(id)
            else
                -- Nouvelle règle : comportement ArkInventory habituel,
                -- elle est active à sa création.
                requestedEnabled = true
            end

            local result = originalRuleEntryUpdate(id, data)

            id = tonumber(id)
            if id and type(AccountRules()[id]) == "table" then
                AccountRules()[id].global_enabled = requestedEnabled
            end

            SyncAllRules()
            return result
        end
    end

    -----------------------------------------------------------------------
    -- 3. Suppression d'une règle
    -----------------------------------------------------------------------
    if ArkInventory.RuleEntryRemove then
        local originalRuleEntryRemove = ArkInventory.RuleEntryRemove

        ArkInventory.RuleEntryRemove = function(id)
            local result = originalRuleEntryRemove(id)

            id = tonumber(id)
            if id then
                ProfileRules()[id] = nil
            end

            SyncAllRules()
            return result
        end
    end

    -----------------------------------------------------------------------
    -- 4. Shift-clic dans la liste des règles
    --
    -- ArkInventory active/désactive directement db.profile.option.rule
    -- sans passer par RuleEntryUpdate. Il faut donc récupérer l'état après
    -- le clic et le rendre global.
    -----------------------------------------------------------------------
    if ArkInventory.Frame_Rules_Table_Row_OnClick then
        local originalRuleRowOnClick = ArkInventory.Frame_Rules_Table_Row_OnClick

        ArkInventory.Frame_Rules_Table_Row_OnClick = function()
            SyncAllRules()

            local shiftClick = IsShiftKeyDown and IsShiftKeyDown()
            local id

            if shiftClick and this and this.GetName then
                local frameName = this:GetName()
                if frameName then
                    local env = getfenv()
                    local idWidget = env[frameName .. "Id"]
                    if idWidget and idWidget.GetText then
                        id = tonumber(idWidget:GetText())
                    end
                end
            end

            local result = originalRuleRowOnClick()

            if shiftClick and id and type(AccountRules()[id]) == "table" then
                -- L'original vient de modifier l'état du profil courant.
                SetGlobalRuleEnabled(id, ProfileRules()[id] and true or false)
                SyncAllRules()
            end

            return result
        end
    end

    -----------------------------------------------------------------------
    -- 5. Fenêtre des règles : toujours afficher l'état global.
    -----------------------------------------------------------------------
    if ArkInventory.Frame_Rules_Show then
        local originalFrameRulesShow = ArkInventory.Frame_Rules_Show

        ArkInventory.Frame_Rules_Show = function()
            SyncAllRules()
            return originalFrameRulesShow()
        end
    end

    if ArkInventory.Frame_Rules_Table_Refresh then
        local originalFrameRulesTableRefresh = ArkInventory.Frame_Rules_Table_Refresh

        ArkInventory.Frame_Rules_Table_Refresh = function(frame)
            SyncAllRules()
            return originalFrameRulesTableRefresh(frame)
        end
    end

    if ArkInventory.Frame_Rules_Button_Modify then
        local originalFrameRulesButtonModify = ArkInventory.Frame_Rules_Button_Modify

        ArkInventory.Frame_Rules_Button_Modify = function(frame)
            SyncAllRules()
            return originalFrameRulesButtonModify(frame)
        end
    end

    -----------------------------------------------------------------------
    -- 6. Affichage des catégories RULE dans les barres.
    -----------------------------------------------------------------------
    if ArkInventory.Category_Bar_HasEntries then
        local originalCategoryBarHasEntries = ArkInventory.Category_Bar_HasEntries

        ArkInventory.Category_Bar_HasEntries = function(loc_id, bar_id, cat_type)
            SyncAllRules()
            return originalCategoryBarHasEntries(loc_id, bar_id, cat_type)
        end
    end

    -----------------------------------------------------------------------
    -- 7. "Ajouter cet objet à la règle" / "retirer de la règle"
    --
    -- La formule et les IDs sont déjà dans db.account.option.rule.
    -- On synchronise juste l'état global avant l'appel original afin que
    -- RuleEntryEdit ne récupère pas un faux état propre au profil courant.
    -----------------------------------------------------------------------
    if ArkInventory.RuleItemAdd then
        local originalRuleItemAdd = ArkInventory.RuleItemAdd

        ArkInventory.RuleItemAdd = function(rulenum, item)
            SyncRule(rulenum)
            return originalRuleItemAdd(rulenum, item)
        end
    end

    if ArkInventory.RuleItemRemove then
        local originalRuleItemRemove = ArkInventory.RuleItemRemove

        ArkInventory.RuleItemRemove = function(rulenum, item)
            SyncRule(rulenum)
            return originalRuleItemRemove(rulenum, item)
        end
    end

    SyncAllRules()
    RefreshAfterInstall()

    if ArkInventory.Output then
        pcall(
            ArkInventory.Output,
            "Global Rules " .. PATCH_VERSION .. " : règles personnalisées partagées entre les profils."
        )
    elseif DEFAULT_CHAT_FRAME then
        DEFAULT_CHAT_FRAME:AddMessage(
            "|cff00ff00ArkInventory Global Rules|r " .. PATCH_VERSION .. " chargé."
        )
    end

    return true
end

-- RequiredDeps garantit qu'ArkInventory est chargé avant ce mini-addon.
-- On attend PLAYER_LOGIN pour laisser ArkInventory terminer ses migrations
-- de base avant de modifier son comportement.
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_LOGIN")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:SetScript("OnEvent", function()
    if InstallPatch() then
        SyncAllRules()
    end
end)
