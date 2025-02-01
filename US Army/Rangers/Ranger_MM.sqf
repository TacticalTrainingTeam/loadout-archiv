
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
player addWeapon "rhs_weap_mk17_LB";
player addPrimaryWeaponItem "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "rhs_uniform_g3_rgr";
player addVest "rhsusf_plateframe_marksman";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Painkillers";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};

player addItemToVest "ACRE_PRC152";
player addItemToVest "ACE_Rangecard";
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 1 do {player addItemToVest "rhs_mag_m18_green";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};

player addHeadgear "rhs_Booniehat_m81";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_medical_medicClass", 0, true]; // 0 = Soldat, 1 = Sanitäter, 2 = Arzt
player setVariable ["ACE_isEOD", false, true]; // false = Soldat, true = EOD-Spezialist
player setVariable ["ACE_isEngineer", 0, true]; // 0 = Soldat, 1 = Pionier, 2 = Instandsetzer