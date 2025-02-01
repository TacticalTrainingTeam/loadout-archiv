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
player addWeapon "rhs_weap_m240B";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_su230a";
player addPrimaryWeaponItem "rhsusf_100Rnd_762x51_m62_tracer";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "hlc_acc_DBALPL";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_GAF_B_U_CombatSmock_04_DIGI";
player addVest "UK3CB_GAF_B_MBAV_MG_DIGI_01";
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
player addItemToVest "ACRE_PRC148";
player addItemToVest "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_m67";
};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {
	player addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";
};
for "_i" from 1 to 2 do {
	player addItemToVest "rhs_mag_an_m8hc";
};
for "_i" from 1 to 2 do {
	player addItemToVest "UK3CB_BAF_9_17Rnd";
};
for "_i" from 1 to 2 do {
	player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";
};

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