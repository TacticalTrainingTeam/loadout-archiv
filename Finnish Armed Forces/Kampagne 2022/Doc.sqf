
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
player addWeapon "rhs_weap_ak104";
player addPrimaryWeaponItem "rhs_acc_pgs64";
player addPrimaryWeaponItem "rhs_30Rnd_762x39mm_polymer_89";
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
player addItemToUniform "ACRE_PRC343";

player addItemToVest "ACRE_PRC152";
for "_i" from 1 to 7 do {player addItemToVest "ACE_adenosine";};
for "_i" from 1 to 15 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_30Rnd_762x39mm_polymer_89";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_bodyBag";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};

player addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "ACE_salineIV";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_surgicalKit";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
player addItemToBackpack "O_NVGoggles_grn_F";

player addHeadgear "rhssaf_helmet_m97_olive_nocamo_black_ess_bare";

player addGoggles selectRandom ["G_Bandanna_blk","G_Bandanna_oli","G_Balaclava_blk","rhsusf_shemagh2_grn","rhsusf_shemagh2_od","rhs_scarf"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

comment "Set identity";
player setRank "LIEUTENANT";                            //PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL
player setVariable ["ACE_medical_medicClass", 2];     //1 = Medic, 2 = Doctor
player setVariable ["ACE_isEngineer", 0];             //1 = Pionier, 2 = Instandsetzer
player setVariable ["ACE_isEOD", false];            //can disarm?

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;