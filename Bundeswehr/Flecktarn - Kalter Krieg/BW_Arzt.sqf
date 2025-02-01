player setRank "LIEUTENANT";
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
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "PBW_Uniform3_fleck";
player addVest "pbw_koppel_sani";
player addBackpack "CUP_B_Kombat_Radio_Olive";

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
for "_i" from 1 to 3 do {player addItemToUniform "BWA3_15Rnd_9x19_P8";};

player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_SpraypaintBlue";
player addItemToVest "ACE_surgicalKit";
player addItemToVest "mts_flags_blue";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};

for "_i" from 1 to 30 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_suture";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_salineIV_250";}; 
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV";};
player addItemToBackpack "ACRE_SEM70";

player addHeadgear "PBW_Helm2_fleck";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ACE_IsEngineer", 0, true];
player setVariable ["ACE_medical_medicClass", 2, true];
player setVariable ["ACE_isEOD", false, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

_insignia = selectRandom [
		"Redd_Lt",
		"Redd_OLt",
		"Redd_Hptm"
	];

[player, _insignia] spawn {
	params ["_unit", "_insignia"];
	uisleep 30;

	[_unit, _insignia] call BIS_fnc_setUnitInsignia;
};