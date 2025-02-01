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
player addVest "UK3CB_GAF_B_MBAV_MEDIC_DIGI_01";
player addBackpack "UK3CB_GAF_B_B_RIF_MED_DIGI";

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
player addItemToVest "ACE_surgicalKit";
player addItemToVest "mts_flags_blue";
player addItemToVest "ACRE_PRC148";
for "_i" from 1 to 6 do {
	player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_m67";
};
for "_i" from 1 to 2 do {
	player addItemToVest "Chemlight_blue";
};
for "_i" from 1 to 3 do {
	player addItemToVest "rhs_mag_an_m8hc";
};
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellBlue";
player addItemToVest "ACE_IR_Strobe_Item";
for "_i" from 1 to 30 do {
	player addItemToBackpack "ACE_suture";
};
for "_i" from 1 to 12 do {
	player addItemToBackpack "ACE_tourniquet";
};
for "_i" from 1 to 16 do {
	player addItemToBackpack "ACE_morphine";
};
for "_i" from 1 to 8 do {
	player addItemToBackpack "ACE_epinephrine";
};
for "_i" from 1 to 40 do {
	player addItemToBackpack "ACE_elasticBandage";
};
for "_i" from 1 to 40 do {
	player addItemToBackpack "ACE_packingBandage";
};
for "_i" from 1 to 40 do {
	player addItemToBackpack "ACE_quikclot";
};
for "_i" from 1 to 18 do {
	player addItemToBackpack "ACE_Chemlight_IR";
};
for "_i" from 1 to 8 do {
	player addItemToBackpack "ACE_CableTie";
};

player addGoggles selectRandom ["", "UK3CB_G_Balaclava2_MEE", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Face_Wrap_01", "rhsusf_shemagh_grn", "rhsusf_shemagh2_grn", "rhsusf_shemagh_od", "rhsusf_shemagh2_od", "rhs_scarf", "G_Balaclava_Flecktarn", "UK3CB_G_Balaclava_CHD"];

player addHeadgear "rhsusf_opscore_fg_pelt";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "ACE_NVG_Wide_Green";

player setVariable ["ace_medical_medicClass", 1, true];
player setVariable ["ACE_isEOD", false, true];
player setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;