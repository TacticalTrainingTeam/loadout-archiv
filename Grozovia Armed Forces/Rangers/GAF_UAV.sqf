player setRank "SERGEANT";

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
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger_Tracer_Red";
player addPrimaryWeaponItem "rhsusf_acc_grip2_wd";

comment "Add containers";
player forceAddUniform "UK3CB_GAF_B_U_CombatSmock_04_DIGI";
player addVest "UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI";
player addBackpack "UK3CB_GAF_B_B_RIF_DIGI";

comment "Add binoculars";
player addMagazine "Laserbatteries";
player addWeapon "UK3CB_BAF_Soflam_Laserdesignator";

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
player addItemToVest "ACRE_PRC152";
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_m67";
};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 8 do {
	player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger_Tracer_Red";
};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ItemcTab";

player addItemToBackpack "ITC_Land_B_AR2i_Packed";
player addItemToBackpack "ACE_UAVBattery";
player addItemToBackpack "ACRE_PRC117F";
player addItemToBackpack "ACRE_VHF30108SPIKE";

player addGoggles selectRandom ["", "UK3CB_G_Balaclava2_MEE", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Face_Wrap_01", "rhsusf_shemagh_grn", "rhsusf_shemagh2_grn", "rhsusf_shemagh_od", "rhsusf_shemagh2_od", "rhs_scarf", "G_Balaclava_Flecktarn", "UK3CB_G_Balaclava_CHD"];

player addHeadgear "rhsusf_opscore_fg_pelt";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "ACE_NVG_Wide_Green";
player linkItem "B_UavTerminal";

player setVariable ["ace_medical_medicClass", 0, true];
player setVariable ["ACE_isEOD", false, true];
player setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;