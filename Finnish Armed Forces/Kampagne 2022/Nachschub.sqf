
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
player addWeapon "rhs_weap_ak104_zenitco01_b33";
player addPrimaryWeaponItem "rhs_acc_pgs64";
player addPrimaryWeaponItem "BWA3_optic_MicroT2";
player addPrimaryWeaponItem "rhs_30Rnd_762x39mm_polymer_tracer";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "rhsgref_uniform_gorka_1_f";
player addVest "LOP_V_CarrierLite_TURK";
player addBackpack "UK3CB_B_Hiker";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ItemAndroid";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACRE_PRC152";

player addItemToVest "ACRE_PRC152";
for "_i" from 1 to 7 do {player addItemToVest "rhs_30Rnd_762x39mm_polymer_tracer";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "rhs_mag_m67";

player addItemToBackpack "O_NVGoggles_grn_F";
player addItemToBackpack "ItemcTab";
player addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
player addItemToBackpack "SmokeShellRed";
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_HandFlare_Red";};
for "_i" from 1 to 5 do {player addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_HandFlare_Yellow";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Chemlight_UltraHiOrange";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Chemlight_HiBlue";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Chemlight_HiRed";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Chemlight_HiYellow";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Chemlight_HiGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Chemlight_IR";};

player addHeadgear "rhssaf_helmet_m97_olive_nocamo_black_ess_bare";

player addGoggles selectRandom ["G_Bandanna_blk","G_Bandanna_oli","G_Balaclava_blk","rhsusf_shemagh2_grn","rhsusf_shemagh2_od","rhs_scarf"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

comment "Set identity";
player setRank "SERGEANT";                            //PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL
player setVariable ["ACE_medical_medicClass", 0];     //1 = Medic, 2 = Doctor
player setVariable ["ACE_isEngineer", 0];             //1 = Pionier, 2 = Instandsetzer
player setVariable ["ACE_isEOD", false];            //can disarm?

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
