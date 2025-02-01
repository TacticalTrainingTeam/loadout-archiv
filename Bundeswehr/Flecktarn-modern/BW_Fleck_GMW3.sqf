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
player addWeapon "BWA3_G36A3";
player addPrimaryWeaponItem selectRandom ["CUP_acc_LLM", "CUP_acc_LLM_black"];
player addPrimaryWeaponItem selectRandom ["BWA3_optic_ZO4x30_RSAS_brown", "BWA3_optic_ZO4x30_RSAS"];
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36_AP";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Rifleman_Fleck";
player addBackpack "BWA3_PatrolPack_Fleck";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 12 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";
player addItemToUniform "ACRE_SEM52SL";
player addItemToUniform "ACE_microDAGR";

for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 8 do {player addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
player addItemToVest "BWA3_DM32_Green";
player addItemToVest "BWA3_optic_NSV600";
player addItemToVest "ACE_EntrenchingTool";

for "_i" from 1 to 2 do {player addItemToBackpack "rnt_gmw_kasten_fake";};

player addHeadgear "BWA3_OpsCore_FastMT_Peltor_Fleck";
player addGoggles "BWA3_G_Combat_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ACE_NVG_Wide_Black";

player setVariable ["ace_medical_medicClass", 0, true]; // 0 = Soldat, 1 = Sanitäter, 2 = Arzt
player setVariable ["ACE_isEOD", false, true]; // false = Soldat, true = EOD-Spezialist
player setVariable ["ACE_isEngineer", 0, true]; // 0 = Soldat, 1 = Pionier, 2 = Instandsetzer

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

[player] spawn {
	params ["_unit", "_insignia"];
	uisleep selectRandom [1,2,3];

	_insignia = selectRandom [
		"Redd_Gef",
		"Redd_OGef",
		"Redd_HptGef",
		"Redd_StGefr"
	];

	[_unit, _insignia] call BIS_fnc_setUnitInsignia;
};