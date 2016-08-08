// Zone generation sizes
CapitalCity_ZoneSize = 600;
City_ZoneSize = 500;
Village_ZoneSize = 400;
Local_ZoneSize = 400;
MinDistBuffer_ZoneSize = 100;

// Boat Insertion Parameters
MinDepth_BoatInsert = -5;              // Minimum water depth.  Must be less than 0.
MinDistance_BoatInsert = 250;          // Minimum distance from any zone center

// Default AI Skill Levels (see below for details)
NATO_Leader_Tier = 3;
NATO_Standard_Tier = 4;

// Skill Levels.  Access using the functions GenSkillGeneral, GenSkillAim, GenSkillSpot (see below)
// Default values and tiers are from the ASR AI3 mod.
// for each level: skilltype, [<min value>, <max value>]
// "Aiming" skills include: "aimingAccuracy" (leading, range estimation, dispersion, recoil)
//                          "aimingShake" (weapon steadiness)
//                          "aimingSpeed" (how quickly to rotate and stabilize aim)
// "Spotting" skills include: "spotDistance" (ability to spot targets visually or audibly and accuracy of its assessment)
//                          "spotTime"  (how quickly the AI reacts to death, damage, or observing the enemy)
// "General" skills include: "courage" (morale)
//                           "reloadSpeed" (delay between switching/reloading)
//                           "commanding" (how quickly recognized targets are shared with the group)
DUWS_AI_Levels = [ // <General>, <Aiming>, <Spotting>
	[[1.00,1.00],   [1.00,1.00],    [1.00,1.00]],	// 0:  super-AI (testing only)
	[[0.90,1.00],	[0.40,0.60],	[0.40,0.50]],	// 1:  Upper-tier SF (recon, divers, spotters)
	[[0.85,0.95],	[0.35,0.55],	[0.35,0.45]],	// 2:  Lower-tier SF
	[[0.80,0.90],	[0.30,0.50],	[0.30,0.40]],	// 3:  Regular army leaders/marksmen
	[[0.75,0.85],	[0.25,0.45],	[0.25,0.35]],	// 4:  Regular army soldiers
	[[0.70,0.80],	[0.20,0.40],	[0.20,0.30]],	// 5:  Militia/trained insurgents (former military training)
    [[0.65,0.75],	[0.15,0.35],	[0.15,0.25]],	// 6:  Insurgents with limited military training
	[[0.60,0.70],	[0.10,0.30],	[0.10,0.20]],	// 7:  No military training
	[[0.80,0.90],	[0.25,0.45],	[0.35,0.45]],	// 8:  Regular pilot
	[[0.70,0.80],	[0.20,0.40],	[0.30,0.40]],	// 9:  Second-tier pilot (e.g. rookie)
	[[0.90,1.00],	[0.60,1.00],	[0.90,1.00]]	// 10: Snipers
];

GetAISkill = {
    _tier = _this select 0;
    _skillCat = _this select 1;
    _returnValue = 0.5;
    
    if (_tier < 0 || _tier > 10) then {
        [format ["ERROR: GenSkillX asked for tier %1.  Tier out of bounds.", _tier]] call DLog; 
    }
    else {
        _RangeArray = (DUWS_AI_Levels select (_this select 0)) select (_this select 1);
        
        _returnValue = [_RangeArray select 0, _RangeArray select 1, 2] call RandRange_Round;
    };
    
    
    
    _returnValue;
};

// The three GenSkill<X> functions take [AI Class] (defined above) and returns appropriate skill value in the defined range.
GenSkillGeneral = {
    _tier = _this select 0;
    _returnValue = [_tier, 0] call GetAISkill;     
    _returnValue;
};

GenSkillAim = {
    _tier = _this select 0;
    _returnValue = [_tier, 1] call GetAISkill;
    _returnValue;
};

GenSkillSpot = {
    _tier = _this select 0;
    _returnValue = [_tier, 2] call GetAISkill;
    _returnValue;
};

// Takes [Unit, Skill Class] as arguments, will set the soldiers' skills accordingly
SetAISkill = {
    _unit = _this select 0;
    _tier = _this select 1;   
    
    _unit setSkill ["aimingAccuracy", [_tier, 1] call GetAISkill];
    _unit setSkill ["aimingShake", [_tier, 1] call GetAISkill];
    _unit setSkill ["aimingSpeed", [_tier, 1] call GetAISkill];
    
    _unit setSkill ["spotDistance", [_tier, 2] call GetAISkill];
    _unit setSkill ["spotTime", [_tier, 2] call GetAISkill];
    
    _unit setSkill ["courage", [_tier, 0] call GetAISkill];
    _unit setSkill ["reloadSpeed", [_tier, 0] call GetAISkill];
    _unit setSkill ["commanding", [_tier, 0] call GetAISkill];
};



