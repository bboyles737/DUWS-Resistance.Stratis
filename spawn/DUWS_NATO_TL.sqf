Spawn_NATO_TL = {
// Spawns a NATO, US Army Team Leader
// Arguments are: [[Pos], Training Tier, Group]
// Returns the unit itself
_pos = _this select 0;
_tier = _this select 1;
_grp = _this select 2;

_this = _grp createUnit ["B_Soldier_TL_F", _pos, [], 5, "CORPORAL"];
_this enableSimulation false;           // Disable simulation while equipping so it doesn't give spurious "no ammo" remarks

// Retains the weapons themselves
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;

// Uniform
_this forceAddUniform "U_B_CombatUniform_mcam";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_this addItemToUniform "16Rnd_9x21_Mag";};
_this addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_green";};
_this addItemToUniform "SmokeShellGreen";
_this addItemToUniform "MiniGrenade";

// Vest
_this addVest "V_PlateCarrierGL_mtp";
for "_i" from 1 to 5 do {_this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 6 do {_this addItemToVest "1Rnd_HE_Grenade_shell";};
_this addItemToVest "MiniGrenade";
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_65x39_caseless_mag_Tracer";};
for "_i" from 1 to 2 do {_this addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_this addItemToVest "1Rnd_SmokeOrange_Grenade_shell";};
_this addHeadgear "H_HelmetB";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "NVGoggles";

[_this,"111thID"] call bis_fnc_setUnitInsignia;

_this enableSimulation true; 

// Training
sleep 0.1;      // Needs a slight delay or the AI skill will be overwritten
[_this, _tier] call SetAISkill;

_this;
};