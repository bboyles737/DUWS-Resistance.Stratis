Spawn_NATO_AR = {
// Spawns a NATO, US Army Automatic Rifleman
// Arguments are: [[Pos], Training Tier, Group]
// Returns the unit itself
_pos = _this select 0;
_tier = _this select 1;
_grp = _this select 2;

_this = _grp createUnit ["B_Soldier_AR_F", _pos, [], 5, "PRIVATE"];
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
_this addItemToUniform "SmokeShellGreen";
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_green";};
_this addItemToUniform "SmokeShell";
_this addItemToUniform "MiniGrenade";

// Vest
_this addVest "V_PlateCarrier2_rgr";
_this addItemToVest "HandGrenade";
for "_i" from 1 to 6 do {_this addItemToVest "100Rnd_65x39_caseless_mag";};
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