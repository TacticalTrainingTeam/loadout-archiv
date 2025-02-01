
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
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_FMJ";

comment "Add containers";
player forceAddUniform "rhs_uniform_abu";
player addVest "FIR_pilot_vest";
player addBackpack "ttt_backpack_radio_coyote";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ItemAndroid";
player addItemToUniform "ACE_Painkillers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};

for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_m18_yellow";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_m18_purple";};

for "_i" from 1 to 2 do {player addItemToBackpack "ACRE_PRC117F";};

player addHeadgear "rhsusf_hgu56p";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_medical_medicClass", 0, true]; // 0 = Soldat, 1 = Sanitäter, 2 = Arzt
player setVariable ["ACE_isEOD", false, true]; // false = Soldat, true = EOD-Spezialist
player setVariable ["ACE_isEngineer", 2, true]; // 0 = Soldat, 1 = Pionier, 2 = Instandsetzer