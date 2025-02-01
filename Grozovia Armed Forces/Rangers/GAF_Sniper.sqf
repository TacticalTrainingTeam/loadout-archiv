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
player addWeapon "BWA3_G29";
player addPrimaryWeaponItem "BWA3_muzzle_snds_Rotex_Monoblock";
player addPrimaryWeaponItem "BWA3_optic_M5Xi_MSR";
player addPrimaryWeaponItem "BWA3_10Rnd_86x70_G29";

comment "Add containers";
player forceAddUniform "UK3CB_CW_US_B_Early_U_CombatUniform_Ghillie_01_ERDL";
player addVest "UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI";
player addBackpack "UK3CB_GAF_B_B_RIF_DIGI";

comment "Add binoculars";
player addWeapon "ACE_Vector";

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
for "_i" from 1 to 5 do {
	player addItemToVest "BWA3_10Rnd_86x70_G29";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_an_m8hc";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_m67";
};
player addItemToVest "SmokeShellGreen";
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToBackpack "ACE_DefusalKit";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "mts_cutter_folding_saw";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "BWA3_optic_NSV80";
player addItemToBackpack "ACE_Tripod";
for "_i" from 1 to 3 do {
	player addItemToBackpack "BWA3_10Rnd_86x70_G29";
};
player addItemToBackpack "ACE_M14";
for "_i" from 1 to 2 do {
	player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";
};
for "_i" from 1 to 2 do {
	player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger";
};

player addGoggles selectRandom ["", "UK3CB_G_Balaclava2_MEE", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Face_Wrap_01", "rhsusf_shemagh_grn", "rhsusf_shemagh2_grn", "rhsusf_shemagh_od", "rhsusf_shemagh2_od", "rhs_scarf", "G_Balaclava_Flecktarn", "UK3CB_G_Balaclava_CHD"];

player addHeadgear "UK3CB_GAF_B_H_BoonieHat_DIGI";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "ACE_NVG_Wide_Green";

[
	player,
	"hlc_rifle_416C",
	["rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger"],
	"",
	"rhsusf_acc_T1_high",
	""
] call WKB_CreateWeaponSecond_Scripted;

player setVariable ["ace_medical_medicClass", 1, true];
player setVariable ["ACE_isEOD", true, true];
player setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;