
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
player forceAddUniform "BWA3_Uniform_Helipilot";
player addVest "FIR_pilot_vest";
player addBackpack "B_RadioBag_01_black_F";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_15Rnd_9x19_P8";};
player addItemToBackpack "ACRE_PRC117F";
player addHeadgear "H_PilotHelmetHeli_I_E";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
