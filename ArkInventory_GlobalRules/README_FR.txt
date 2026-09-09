ArkInventory - Global Rules
===========================

But
---
Conserver un profil ArkInventory différent pour chaque personnage (barres,
disposition, organisation visuelle), tout en partageant les règles
personnalisées entre TOUS les profils.

Ce qui est partagé
------------------
- définition / formule de la règle ;
- objets ajoutés à une règle via leur ID ;
- état actif / inactif de la règle.

Ce qui reste propre à chaque profil
-----------------------------------
- disposition des barres ;
- emplacement visuel des catégories ;
- organisation des sacs et de la banque ;
- autres options de profil ArkInventory.

Installation
------------
1. Fermer WoW.
2. Décompresser le dossier "ArkInventory_GlobalRules" dans :
   Interface\AddOns\
3. Vérifier que vous avez donc :
   Interface\AddOns\ArkInventory_GlobalRules\ArkInventory_GlobalRules.toc
   Interface\AddOns\ArkInventory_GlobalRules\ArkInventory_GlobalRules.lua
4. Relancer WoW.

Aucune modification du dossier ArkInventory d'origine n'est nécessaire.

Migration au premier chargement
--------------------------------
Le patch ajoute un champ "global_enabled" aux règles déjà présentes dans
les SavedVariables du compte.

- Si le profil courant contient déjà des états de règles, il sert de
  référence lors de la première migration.
- Si le profil courant est totalement vierge, les règles existantes sont
  activées par défaut pour éviter une désactivation accidentelle générale.

Conseil
-------
Faire une copie de sauvegarde de :
WTF\Account\<COMPTE>\SavedVariables\ArkInventory.lua

avant le premier lancement avec le patch.

Désinstallation
---------------
Supprimer simplement le dossier ArkInventory_GlobalRules.

Le champ "global_enabled" éventuellement laissé dans les SavedVariables
est ignoré par ArkInventory original.
