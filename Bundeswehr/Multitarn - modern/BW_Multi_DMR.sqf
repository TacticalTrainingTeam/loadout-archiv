
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
player addWeapon "BWA3_G28";
player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
player addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear";
player addPrimaryWeaponItem "BWA3_20Rnd_762x51_G28_Tracer";
player addPrimaryWeaponItem "BWA3_bipod_Harris";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Multi";
player addVest "BWA3_Vest_Marksman_Multi";
player addBackpack "BWA3_AssaultPack_Multi";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_painkillers";
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 2 do {player addItemToUniform "BWA3_15Rnd_9x19_P8";};
player addItemToVest "ACRE_PRC343";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 8 do {player addItemToVest "BWA3_20Rnd_762x51_G28_Tracer";};
player addItemToVest "BWA3_15Rnd_9x19_P8";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "BWA3_optic_NSV600";
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM25";};
player addItemToBackpack "BWA3_DM32_Green";
for "_i" from 1 to 8 do {player addItemToBackpack "BWA3_20Rnd_762x51_G28";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_15Rnd_9x19_P8";};
player addHeadgear "BWA3_OpsCore_FastMT_Peltor_Multi";
player addGoggles "BWA3_G_Combat_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
