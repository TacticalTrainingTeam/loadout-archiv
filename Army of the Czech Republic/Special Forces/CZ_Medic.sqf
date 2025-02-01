
comment "Exported from Arsenal by Andx";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "CUP_CZ_BREN2_556_11_Grn";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "CUP_optic_ZDDot";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
player addWeapon "CUP_hgun_Duty";
player addHandgunItem "CUP_acc_CZ_M3X";
player addHandgunItem "16Rnd_9x21_red_Mag";

comment "Add containers";
player forceAddUniform "CUP_U_B_CZ_WDL_NoKneepads";
player addVest "CUP_V_CZ_vest13";
player addBackpack "CUP_B_AlicePack_Bedroll";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";
player addItemToUniform "16Rnd_9x21_red_Mag";

player addItemToVest "ACRE_PRC343";
player addItemToVest "ACE_wirecutter";
player addItemToVest "ACE_surgicalKit";
player addItemToVest "mts_flags_blue";
player addItemToVest "CUP_HandGrenade_M67";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_red_Mag";};
for "_i" from 1 to 6 do {player addItemToVest "30Rnd_556x45_Stanag_red";};
player addItemToVest "ACE_SpraypaintBlue";

for "_i" from 1 to 8 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_suture";};
for "_i" from 1 to 16 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 24 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_quikclot";};
player addItemToBackpack "ACE_bodyBag";
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_painkillers";};

player addHeadgear "CUP_H_CZ_Helmet04";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
