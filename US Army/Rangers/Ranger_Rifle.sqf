
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
player addWeapon "rhs_weap_mk18";
player addPrimaryWeaponItem "rhsusf_acc_nt4_tan";
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a_top";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "rhs_uniform_g3_rgr";
player addVest "rhsusf_plateframe_rifleman";
player addBackpack "B_AssaultPack_rgr";

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
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 1 do {player addItemToVest "rhs_mag_m18_green";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
player addHeadgear "rhsusf_opscore_ut_pelt";

player addGoggles "rhs_googles_black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_medical_medicClass", 0, true]; // 0 = Soldat, 1 = Sanitäter, 2 = Arzt
player setVariable ["ACE_isEOD", false, true]; // false = Soldat, true = EOD-Spezialist
player setVariable ["ACE_isEngineer", 0, true]; // 0 = Soldat, 1 = Pionier, 2 = Instandsetzer