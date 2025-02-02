
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
player addWeapon "rhs_weap_ak103_zenitco01_b33";
player addPrimaryWeaponItem "rhs_acc_dtk4screws";
player addPrimaryWeaponItem "optic_AMS";
player addPrimaryWeaponItem "rhs_30Rnd_762x39mm_polymer";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "U_B_T_FullGhillie_tna_F";
player addVest "LOP_V_CarrierLite_TURK";
player addBackpack "UK3CB_B_Hiker";

comment "Add binoculars";
player addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_ATragMX";
player addItemToUniform "ItemMicroDAGR";
player addItemToUniform "ACRE_PRC343";
player addItemToUniform "ACE_microDAGR";

for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 6 do {player addItemToVest "rhs_30Rnd_762x39mm_polymer_89";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";

player addItemToBackpack "O_NVGoggles_grn_F";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_Tripod";
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_5Rnd_338lapua_t5000";};

player addHeadgear "rhssaf_helmet_m97_olive_nocamo_black_ess_bare";

player addGoggles selectRandom ["G_Bandanna_blk","G_Bandanna_oli","G_Balaclava_blk","rhsusf_shemagh2_grn","rhsusf_shemagh2_od","rhs_scarf"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

comment "setIdentity";
player setRank "CORPORAL";                            //PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL
player setVariable ["ACE_medical_medicClass", 1];     //1 = Medic, 2 = Doctor
player setVariable ["ACE_isEngineer", 0];             //1 = Pionier, 2 = Instandsetzer
player setVariable ["ACE_isEOD", false];            //can disarm?

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;