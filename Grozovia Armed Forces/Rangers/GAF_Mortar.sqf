player setRank "PRIVATE";

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
player addWeapon "hlc_rifle_416D145_wdl";
player addPrimaryWeaponItem "BWA3_muzzle_snds_QDSS_green";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem "rhsusf_acc_T1_high";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger";
player addPrimaryWeaponItem "rhsusf_acc_grip2_wd";

comment "Add containers";
player forceAddUniform "UK3CB_GAF_B_U_CombatSmock_04_DIGI";
player addVest "UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI";
player addBackpack "UK3CB_GAF_B_B_ENG_DIGI";

comment "Add items to containers";
for "_i" from 1 to 20 do {
	player addItemToUniform "ACE_fieldDressing";
};
for "_i" from 1 to 10 do {
	player addItemToUniform "ACE_packingBandage";
};
player addItemToUniform "ACE_painkiller";
for "_i" from 1 to 2 do {
	player addItemToUniform "ACE_tourniquet";
};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "acex_intelitems_notepad";
player addItemToVest "ACRE_PRC148";
player addItemToVest "ACE_artilleryTable";
for "_i" from 1 to 8 do {
	player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_an_m8hc";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_m67";
};
player addItemToVest "SmokeShellGreen";
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToBackpack "ACE_PlottingBoard";
player addHeadgear "rhsusf_opscore_fg_pelt";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "ACE_NVG_Wide_Green";

player setVariable ["ace_medical_medicClass", 0, true];
player setVariable ["ACE_isEOD", false, true];
player setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;