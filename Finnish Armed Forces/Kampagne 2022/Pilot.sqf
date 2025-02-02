
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
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "UK3CB_CW_SOV_O_LATE_U_H_Pilot_Uniform_01_TTSKO";
player addVest "FIR_pilot_vest";
player addBackpack "B_AssaultPack_rgr";

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
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Yellow";};
player addItemToVest "SmokeShellPurple";

player addItemToBackpack "O_NVGoggles_grn_F";
player addItemToBackpack "ACRE_PRC117F";

player addHeadgear "rhsusf_hgu56p";

player addGoggles selectRandom ["G_Bandanna_blk","G_Bandanna_oli","G_Balaclava_blk","rhsusf_shemagh2_grn","rhsusf_shemagh2_od","rhs_scarf"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

comment "Set identity";
player setRank "CAPTAIN";                            //PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL
player setVariable ["ACE_medical_medicClass", 0];     //1 = Medic, 2 = Doctor
player setVariable ["ACE_isEngineer", 0];             //1 = Pionier, 2 = Instandsetzer
player setVariable ["ACE_isEOD", false];            //can disarm?

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
player action ["SwitchWeapon", player, player, -1];