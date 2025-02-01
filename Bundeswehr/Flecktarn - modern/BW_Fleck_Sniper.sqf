
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
player addPrimaryWeaponItem selectRandom ["CUP_acc_LLM", "CUP_acc_LLM_black"];
player addPrimaryWeaponItem "BWA3_optic_M5Xi_Tremor3";
player addPrimaryWeaponItem "BWA3_10Rnd_86x70_G29";
player addPrimaryWeaponItem "BWA3_bipod_Atlas";
player addPrimaryWeaponItem "BWA3_muzzle_snds_Rotex_Monoblock";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Marksman_Fleck";
player addBackpack "BWA3_AssaultPack_Fleck";

comment "Add binoculars";
player addWeapon "ACE_Vector";

comment "Add items to containers";
player addItemToUniform "BWA3_15Rnd_9x19_P8";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 12 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACRE_SEM52SL";
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";

player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_ATragMX";
player addItemToVest "BWA3_optic_NSV80";
player addItemToVest "ItemAndroid";
player addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 4 do {player addItemToVest "BWA3_10Rnd_86x70_G29";};

player addItemToBackpack "ACE_Tripod";
for "_i" from 1 to 4 do {player addItemToBackpack "BWA3_10Rnd_86x70_G29";};
for "_i" from 1 to 3 do {player addItemToBackpack "BWA3_30Rnd_556x45_G36_AP";};
player addItemToBackpack "BWA3_OpsCore_FastMT_Peltor_Fleck";

player addHeadgear "BWA3_Booniehat_Fleck";
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
		"Redd_FW",
		"Redd_OFw",
		"Redd_HptFw",
		"Redd_StFw"
	];

	[_unit, _insignia] call BIS_fnc_setUnitInsignia;
};

[
    [
		"BWA3_G36KA3",                   //Classname der zweiten Waffe
		"",                               //Schalldämpfer oder ähnliches
		"CUP_acc_LLM",                  //Laserpointer / Waffenlicht
		"BWA3_optic_ZO4x30_RSAS_brown",                     //Optik
		["BWA3_30Rnd_556x45_G36_AP", 30],   //Magazin mit Anzahl Kugeln
		[],                               //Zweites Magazin (z.B. UGL)
		""                                 //Zweibein oder ähnliches
  ]
 ] call KJW_TwoPrimaryWeapons_fnc_addSecondWeapon;