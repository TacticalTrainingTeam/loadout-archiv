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
player addWeapon "rhs_weap_cz99";
player addHandgunItem "rhssaf_mag_15Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "UK3CB_GAF_B_U_H_Pilot_Uniform_01_DIGI";
player addVest "UK3CB_GAF_B_MBAV_LIGHT_DIGI";
player addBackpack "UK3CB_GAF_B_B_ASS_DIGI";

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
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACRE_PRC148";
player addItemToVest "ACRE_PRC152";
for "_i" from 1 to 3 do {
	player addItemToVest "rhssaf_mag_15Rnd_9x19_FMJ";
};
for "_i" from 1 to 2 do {
	player addItemToVest "ACE_Chemlight_HiGreen";
};
for "_i" from 1 to 2 do {
	player addItemToVest "ACE_Chemlight_IR";
};
for "_i" from 1 to 2 do {
	player addItemToVest "ACE_HandFlare_Green";
};
for "_i" from 1 to 2 do {
	player addItemToVest "ACE_HandFlare_Yellow";
};
for "_i" from 1 to 2 do {
	player addItemToVest "SmokeShellGreen";
};
for "_i" from 1 to 2 do {
	player addItemToVest "SmokeShellYellow";
};
player addItemToBackpack "ACRE_PRC117F";

player addGoggles selectRandom ["", "UK3CB_G_Balaclava2_MEE", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Face_Wrap_01", "rhsusf_shemagh_grn", "rhsusf_shemagh2_grn", "rhsusf_shemagh_od", "rhsusf_shemagh2_od", "rhs_scarf", "G_Balaclava_Flecktarn", "UK3CB_G_Balaclava_CHD"];

player addHeadgear "UK3CB_H_Crew_Helmet";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "ACE_NVG_Wide_Green";

player setVariable ["ace_medical_medicClass", 0, true];
player setVariable ["ACE_isEOD", false, true];
player setVariable ["ACE_isEngineer", 2, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;