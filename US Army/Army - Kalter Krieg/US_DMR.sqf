player setRank "PRIVATE";

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
player addWeapon "UK3CB_M21";
player addPrimaryWeaponItem "uk3cb_optic_artel_m14";
player addPrimaryWeaponItem "ACE_20Rnd_762x51_Mag_Tracer";
player addWeapon "rhsusf_weap_m1911a1";
player addHandgunItem "rhsusf_mag_7x45acp_MHP";

comment "Add containers";
player forceAddUniform "UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL";
player addVest selectRandom ["UK3CB_V_Chestrig_OLI","UK3CB_V_Chestrig_ERDL", "UK3CB_V_Chestrig_WDL_01", "UK3CB_V_Chestrig_WDL_02"];
player addBackpack "UK3CB_UN_B_B_ASS";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 15 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_painkillers";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};

player addItemToVest "ACE_RangeCard";
player addItemToVest "rhs_mag_m67";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
player addItemToVest "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL";
for "_i" from 1 to 8 do {player addItemToVest "ACE_20Rnd_762x51_Mag_Tracer";};

for "_i" from 1 to 8 do {player addItemToBackpack "ACE_20Rnd_762x51_M118LR_Mag";};
player addItemToBackpack "ACE_EntrenchingTool";

player addHeadgear "UK3CB_CW_US_B_LATE_H_Patrol_Cap_WDL_01";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

[ACE_player, currentWeapon ACE_player, true] call ace_safemode_fnc_setWeaponSafety;
