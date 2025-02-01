
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
player addWeapon "CUP_srifle_SVD_wdl";
player addPrimaryWeaponItem "CUP_optic_PSO_1";
player addPrimaryWeaponItem "ACE_10Rnd_762x54_Tracer_mag";
player addWeapon "CUP_hgun_Duty";
player addHandgunItem "CUP_acc_CZ_M3X";
player addHandgunItem "16Rnd_9x21_red_Mag";

comment "Add containers";
player forceAddUniform "CUP_U_B_CZ_WDL_NoKneepads";
player addVest "CUP_V_CZ_vest04";
player addBackpack "CUP_B_ACRScout_m95";

comment "Add binoculars";
player addWeapon "ACE_Yardage450";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";
player addItemToUniform "16Rnd_9x21_red_Mag";

player addItemToVest "ACRE_PRC343";
player addItemToVest "ACE_wirecutter";
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_red_Mag";};
for "_i" from 1 to 6 do {player addItemToVest "ACE_10Rnd_762x54_Tracer_mag";};

for "_i" from 1 to 4 do {player addItemToBackpack "ACE_10Rnd_762x54_Tracer_mag";};

player addHeadgear "CUP_H_CZ_Helmet04";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
