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
player addWeapon "hlc_lmg_MG3";
player addPrimaryWeaponItem "hlc_100Rnd_762x51_M_MG3";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "PBW_Uniform3_fleck";
player addVest "pbw_splitter_mg";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";
player addItemToUniform "BWA3_DM25";
player addItemToUniform "BWA3_DM51A1";
player addItemToUniform "BWA3_15Rnd_9x19_P8";

player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItemToVest "hlc_100Rnd_762x51_M_MG3";};

player addHeadgear "PBW_Helm2_fleck";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ACE_IsEngineer", 0, true];
player setVariable ["ACE_medical_medicClass", 0, true];
player setVariable ["ACE_isEOD", false, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

_insignia = selectRandom [
		"Redd_OGef",
		"Redd_HptGef",
		"Redd_StGefr",
		"Redd_OStGefr" 
	];

[player, _insignia] spawn {
	params ["_unit", "_insignia"];
	uisleep 30;

	[_unit, _insignia] call BIS_fnc_setUnitInsignia;
};