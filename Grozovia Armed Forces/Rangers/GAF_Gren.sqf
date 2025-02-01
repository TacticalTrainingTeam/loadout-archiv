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
player addWeapon "rhs_weap_M320";
player addHandgunItem "rhs_mag_M441_HE";

comment "Add containers";
player forceAddUniform "UK3CB_GAF_B_U_CombatSmock_04_DIGI";
player addVest "UK3CB_GAF_B_MBAV_GRENADIER_DIGI";
player addBackpack "UK3CB_GAF_B_B_RIF_DIGI";

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

for "_i" from 1 to 6 do {
	player addItemToVest "rhs_mag_M441_HE";
};
for "_i" from 1 to 6 do {
	player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_an_m8hc";
};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_m67";
};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACRE_PRC148";
for "_i" from 1 to 6 do {
	player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger";
};
for "_i" from 1 to 10 do {
	player addItemToBackpack "rhs_mag_M441_HE";
};
for "_i" from 1 to 4 do {
	player addItemToBackpack "ACE_HuntIR_M203";
};
for "_i" from 1 to 5 do {
	player addItemToBackpack "rhs_mag_m714_White";
};
for "_i" from 1 to 5 do {
	player addItemToBackpack "rhs_mag_m713_Red";
};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "mts_cutter_folding_saw";

player addGoggles selectRandom ["", "UK3CB_G_Balaclava2_MEE", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Face_Wrap_01", "rhsusf_shemagh_grn", "rhsusf_shemagh2_grn", "rhsusf_shemagh_od", "rhsusf_shemagh2_od", "rhs_scarf", "G_Balaclava_Flecktarn", "UK3CB_G_Balaclava_CHD"];

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