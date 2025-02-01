
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
player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
player addWeapon "BWA3_PzF3_Tandem_Loaded";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Multi";
player addVest "BWA3_Vest_Rifleman_Multi";
player addBackpack "BWA3_AssaultPack_Multi";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "BWA3_15Rnd_9x19_P8";};
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";

player addItemToVest "ACRE_PRC343";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 8 do {player addItemToVest "BWA3_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};

player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 8 do {player addItemToBackpack "BWA3_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM25";};
player addItemToBackpack "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_15Rnd_9x19_P8";};
player addItemToBackpack "BWA3_optic_NSA80";
player addItemToBackpack "BWA3_optic_NSV600";

player addHeadgear "BWA3_OpsCore_FastMT_Peltor_Multi";
player addGoggles "BWA3_G_Combat_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
