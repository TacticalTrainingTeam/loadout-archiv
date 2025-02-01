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
player addWeapon "BWA3_G36A1";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36_Tracer";
player addWeapon "BWA3_P2A1";
player addHandgunItem "BWA3_1Rnd_Flare_Multistar_Red";

comment "Add containers";
player forceAddUniform "PBW_Uniform3_fleck";
player addVest "pbw_splitter_grpfhr";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 3 do {player addItemToUniform "BWA3_1Rnd_Flare_Singlestar_Green";};

player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "mts_whistle_FOX40";
player addItemToVest "ACRE_SEM52SL";
player addItemToVest "ACE_SpraypaintGreen";
player addItemToVest "ACE_SpraypaintRed";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 6 do {player addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 5 do {player addItemToVest "BWA3_1Rnd_Flare_Multistar_Red";};
for "_i" from 1 to 5 do {player addItemToVest "BWA3_1Rnd_Flare_Singlestar_Red";};

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
		"Redd_Uffz",
		"Redd_StUffz",
		"Redd_FW",
		"Redd_OFw"
	];

[player, _insignia] spawn {
	params ["_unit", "_insignia"];
	uisleep 30;

	[_unit, _insignia] call BIS_fnc_setUnitInsignia;
};