
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
player addWeapon "CUP_CZ_BREN2_556_14_GL_Grn";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "CUP_optic_ZDDot";
player addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
player addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
player addWeapon "CUP_hgun_Duty";
player addHandgunItem "CUP_acc_CZ_M3X";
player addHandgunItem "16Rnd_9x21_red_Mag";

comment "Add containers";
player forceAddUniform "CUP_U_B_CZ_WDL_NoKneepads";
player addVest "CUP_V_CZ_vest08";
player addBackpack "CUP_B_ACRScout_m95";

comment "Add binoculars";
player addWeapon "Rangefinder";

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
player addItemToVest "ACRE_PRC148";
player addItemToVest "ItemAndroid";
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_red_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 6 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};

for "_i" from 1 to 10 do {player addItemToBackpack "CUP_1Rnd_HE_M203";};
for "_i" from 1 to 5 do {player addItemToBackpack "CUP_1Rnd_HEDP_M203";};

player addHeadgear "CUP_H_CZ_Helmet04";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
