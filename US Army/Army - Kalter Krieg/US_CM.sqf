
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
player addWeapon "UK3CB_M16A3";
player addPrimaryWeaponItem "UK3CB_M16_30rnd_556x45";

comment "Add containers";
player forceAddUniform "UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL";
player addVest selectRandom ["UK3CB_V_Chestrig_OLI","UK3CB_V_Chestrig_ERDL", "UK3CB_V_Chestrig_WDL_01", "UK3CB_V_Chestrig_WDL_02"];
player addBackpack "UK3CB_B_Alice_pack_frame_02_M81";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 15 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_painkillers";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};

for "_i" from 1 to 4 do {player addItemToVest "UK3CB_M16_30rnd_556x45";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "rhsgref_helmet_pasgt_olive";
player addItemToVest "SmokeShellGreen";
player addItemToVest "ACE_surgicalKit";
player addItemToVest "ACE_Flashlight_MX991";

for "_i" from 1 to 45 do {player addItemToBackpack "ACE_Suture";};
for "_i" from 1 to 45 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 45 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 27 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 9 do {player addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 9 do {player addItemToBackpack "ACE_Painkillers";};
for "_i" from 1 to 9 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_EntrenchingTool";

player addHeadgear "UK3CB_CW_US_B_LATE_H_Patrol_Cap_WDL_01";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_medical_medicClass", 1, true];

[ACE_player, currentWeapon ACE_player, true] call ace_safemode_fnc_setWeaponSafety;

//ToDo Insignia 
//UK3CB_BAF_Insignia_RedCross
