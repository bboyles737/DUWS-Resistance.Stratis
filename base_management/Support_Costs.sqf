// Base costs for support, in Command Points
NATO_Soldier_Cost = 2;
NATO_Crew_Cost = 6;
NATO_Medic_Cost = 6;
NATO_Engineer_Cost = 6;
NATO_EOD_Cost = 6;

// Adjusts starting skill of soldiers
// Recon is required for recon class soldiers.  Their training level is between Veteran and SpecialOps
// SpecialOps is required for snipers and divers
Overall_CostMult = 1.0;
Standard_Training_CostMult = 1.0;
Veteran_Training_CostMult = 3.0;
Recon_Training_CostMult = 5.0;
SpecOps_Training_CostMult = 10.0;

// Operator Restrictions
Standard_Operator = 0;      // Able to drive and gun wheeled vehicles.  Boat capable.
Tracked_Operator = 1;       // Able to drive and gun tracked vehicles
Helo_Operator = 2;          // Able to gun helicopters
Helo_Pilot = 3;             // Able to fly and gun helicopters
Pilot_Operator = 4;         // Able to fly planes
Dive_Operator = 5;          // Able to operate submarines

// Types of items for add commands
WeaponType = 0;
ItemType1 = 1;
BackpackType = 2;
MagazineType = 3;


// Format is [Display Name, Class Name, BaseCost, TrainingMult, OperatorType]
NATO_Soldier_Classes = [
   ["Ammo Bearer",              "B_Soldier_A_F",        NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Autorifleman",             "B_Soldier_AR_F",       NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Combat Life Saver",        "B_Medic_F",            NATO_Medic_Cost,    Standard_Training_CostMult, Standard_Operator],
   ["Crewman",                  "B_Crew_F",             NATO_Crew_Cost,     Standard_Training_CostMult, Tracked_Operator],
   ["Engineer",                 "B_Engineer_F",         NATO_Engineer_Cost, Standard_Training_CostMult, Standard_Operator],
   ["Explosive Specialist",     "B_Soldier_Exp_F",      NATO_EOD_Cost,      Standard_Training_CostMult, Standard_Operator],
   ["Grenadier",                "B_Soldier_GL_F",       NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Helicopter Crew",          "B_Helicrew_F",         NATO_Crew_Cost,     Standard_Training_CostMult, Helo_Operator],
   ["Helicopter Pilot",         "B_Helipilot_F",        NATO_Crew_Cost,     Standard_Training_CostMult, Helo_Pilot],
   ["Marksman",                 "B_Soldier_M_F",        NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["AA Missile Specialist",    "B_Soldier_AA_F",       NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["AT Missile Specialist",    "B_Soldier_AT_F",       NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Paratrooper",              "B_Soldier_PG_F",       NATO_Soldier_Cost,  Veteran_Training_CostMult,  Standard_Operator],
   ["Pilot",                    "B_Pilot_F",            NATO_Crew_Cost,     Standard_Training_CostMult, Pilot_Operator],
   ["Repair Specialist",        "B_Soldier_Repair_F",   NATO_Engineer_Cost, Standard_Training_CostMult, Standard_Operator],
   ["Rifleman",                 "B_Soldier_F",          NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Rifleman (AT)",            "B_Soldier_LAT_F",      NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Soldier (Unarmed)",        "B_Soldier_Unarmed_F",  NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Squad Leader",             "B_Soldier_SL_F",       NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Team Leader",              "B_Soldier_TL_F",       NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["UAV Operator",             "B_Soldier_UAV_F",      NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Recon Demo Specialist",    "B_Recon_Exp_F",        NATO_EOD_Cost,      Recon_Training_CostMult,    Standard_Operator],
   ["Recon JTAC",               "B_Recon_JTAC_F",       NATO_Soldier_Cost,  Recon_Training_CostMult,    Standard_Operator],
   ["Recon Marksman",           "B_Recon_M_F",          NATO_Soldier_Cost,  Recon_Training_CostMult,    Standard_Operator],
   ["Recon Paramedic",          "B_Recon_Medic_F",      NATO_Medic_Cost,    Recon_Training_CostMult,    Standard_Operator],
   ["Recon Scout",              "B_Recon_F",            NATO_Soldier_Cost,  Recon_Training_CostMult,    Standard_Operator],
   ["Recon Scout (AT)",         "B_Recon_LAT_F",        NATO_Soldier_Cost,  Recon_Training_CostMult,    Standard_Operator],
   ["Recon Team Leader",        "B_Recon_TL_F",         NATO_Soldier_Cost,  Recon_Training_CostMult,    Standard_Operator],
   ["Assault Diver",            "B_Diver_F",            NATO_Soldier_Cost,  SpecOps_Training_CostMult,  Dive_Operator],
   ["Diver Explosive Specialist","B_Diver_Exp_F",       NATO_EOD_Cost,      SpecOps_Training_CostMult,  Dive_Operator],
   ["Diver Team Leader",        "B_Diver_TL_F",         NATO_Soldier_Cost,  SpecOps_Training_CostMult,  Dive_Operator],
   ["Sniper",                   "B_Sniper_F",           NATO_Soldier_Cost,  SpecOps_Training_CostMult,  Standard_Operator],
   ["Spotter",                  "B_Spotter_F",          NATO_Soldier_Cost,  SpecOps_Training_CostMult,  Standard_Operator]
];

// Format is [Display Name, Class Name, Cost]
NATO_Weapons_Classes = [
    ["M320 LRR .408 Sniper Rifle",  "SRifle_LRR_F",                  12],
    ["Mk18 ABR 7.62mm Sniper Rifle","SRifle_EBR_F",                  8],
    ["MX 6.5mm AR",                 "ARifle_MX_F",                   1],
    ["MX 3GL 6.5mm AR/GL",          "ARifle_MX_GL_F",                2],
    ["MX SW 6.5mm LMG",             "ARifle_MX_SW_F",                3],
    ["MXC 6.5mm Carbine",           "ARifle_MXC_F",                  1],
    ["MXM 6.5mm Rifle",             "ARifle_MXM_F",                  3],
    ["SDAR 5.56mm Assault Rifle",   "ARifle_SDAR_F",                 3],
    ["Vermin .45 ACP SMG",          "SMG_01_F",                      0.7],
    ["PMCL Launcher",               "Launch_NLAW_F",                 5],
    ["Titan MPRL (AA)",             "Launch_B_Titan_F",              15],
    ["Titan MRPL Compact (AT)",     "Launch_B_Titan_short_F",        15],
    ["PO7 9mm Pistol",              "hgun_P07_F",                    0.2]
];

NATO_CrewWeapons_Classes = [
    ["Mk6 Mortar Bipod",            "B_Mortar_01_Support_F",    5],
    ["Mk6 Mortar Tube",             "B_Mortar_01_Weapon_F",     15],
    ["Mk30 .50cal HMG",             "B_HMG_01_Weapon_F",        10],
    ["Mk30 .50cal HMG (Raised)",    "B_HMG_01_High_Weapon_F",   10],
    ["Mk32 20mm GMG",               "B_GMG_01_Weapon_F",        20],
    ["Mk32 20mm GMG (Raised)",      "B_GMG_01_High_Weapon_F",   20],
    ["Static Titan AA Launcher",    "B_AA_01_Weapon_F",         20],
    ["Static Titan AT Launcher",    "B_AT_01_Weapon_F",         20],
    ["Tripod",                      "B_HMG_01_Support_F",       5],
    ["Tripod (Raised)",             "B_HMG_01_Support_High_F",  5]
    
];

NATO_WpnAccessory_Classes = [
    ["ACO (Red)",                   "Optic_ACO",           1],
    ["ACO SMG (Red)",               "Optic_ACO_SMG",       1],
    ["DMS",                         "Optic_DMS",           5],
    ["Flashlight",                  "Acc_Flashlight",      0.5],
    ["IR Laser Pointer",            "Acc_Pointer_IR",      1],
    ["Mk17 Holosight",              "Optic_Holosight",     1],
    ["Mk17 Holosight (SMG)",        "Optic_Holosight_SMG", 1],
    ["NVS",                         "Optic_NVS",           20],
    ["RCO",                         "Optic_HAMR",          3],
    ["SOS",                         "Optic_SOS",           10],
    ["Sound Suppressor 6.5mm",      "Muzzle_Snds_H",       4],
    ["Sound Suppressor 6.5mm (SW)", "Muzzle_Snds_H_SW",    5],
    ["Sound Suppressor 9mm",        "Muzzle_Snds_L",       3]
];

NATO_Magazine_Classes = [
    [".408 7 round (LRR)",          "7Rnd_408_Mag",                     2],
    [".45 ACP 30 rnd (Vermin)",     "30Rnd_45ACP_Mag_SMG_01",           1],
    ["5.56mm 30 rnd STANAG (SDAR)", "30Rnd_556x45_Stanag",              1],
    ["5.56mm 20 rnd DP (SDAR)",     "20Rnd_556x45_UW_mag",              1],
    ["6.5mm 30 rnd STANAG (MX)",    "30Rnd_65x39_caseless_mag",         1],
    ["6.5mm 30 rnd Tracer (Red)",   "30Rnd_65x39_caseless_mag_Tracer",  2],
    ["6.5mm 100 rnd Belt (MX SW)",  "100Rnd_65x39_caseless_mag",        3],
    ["7.62mm 20 round (ABR)",       "20Rnd_762x51_Mag",                 2],
    ["9mm 16 round (PO7)",          "16Rnd_9x21_Mag",                   0.5],
    ["PCML Missile",                "NLAW_F",                           3],
    ["Titan AA Missile",            "Titan_AA",                         5],
    ["Titan AP Missile",            "Titan_AP",                         4],
    ["Titan AT Missile",            "Titan_AT",                         5],
    ["RGO Frag Grenade",            "HandGrenade",                      0.25],
    ["Mini Grenade",                "MiniGrenade",                      0.1],
    ["40mm HE Grenade",             "1Rnd_HE_Grenade_shell",            0.5],
    ["40mm HE Grenade (x3)",        "3Rnd_HE_Grenade_shell",            2],
    ["40mm Smoke (White)",          "1Rnd_Smoke_Grenade_shell",         0.25],
    ["40mm Smoke (Blue)",           "1Rnd_SmokeBlue_Grenade_shell",     0.25],
    ["40mm Smoke (Green)",          "1Rnd_SmokeGreen_Grenade_shell",    0.25],
    ["40mm Smoke (Orange)",         "1Rnd_SmokeOrange_Grenade_shell",   0.25],
    ["40mm Smoke (Purple)",         "1Rnd_SmokePurple_Grenade_shell",   0.25],
    ["40mm Smoke (Red)",            "1Rnd_SmokeRed_Grenade_Shell",      0.25],
    ["40mm Flare (IR)",             "UGL_FlareCIR_F",                   0.5],
    ["40mm Flare (Green)",          "UGL_FlareGreen_F",                 0.25],
    ["40mm Flare (Red)",            "UGL_FlareRed_F",                   0.25],
    ["40mm Flare (White)",          "UGL_FlareWhite_F",                 0.25],
    ["40mm Flare (Yellow)",         "UGL_FlareYellow_F",                0.25],
    ["Smoke Grenade (White)",       "SmokeShell",                       0.125],
    ["Smoke Grenade (Blue)",        "SmokeShellBlue",                   0.125],
    ["Smoke Grenade (Green)",       "SmokeShellGreen",                  0.125],
    ["Smoke Grenade (Orange)",      "SmokeShellOrange",                 0.125],
    ["Smoke Grenade (Purple)",      "SmokeShellPurple",                 0.125],
    ["Smoke Grenade (Red)",         "SmokeShellRed",                    0.125],
    ["Smoke Grenade (Yellow)",      "SmokeShellYellow",                 0.125],
    ["IR Signal Grenade",           "B_IR_Grenade",                     0.25],
    ["Chemlight (Blue)",            "Chemlight_Blue",                   0.05],
    ["Chemlight (Green)",           "Chemlight_Green",                  0.05],
    ["Chemlight (Red)",             "Chemlight_Red",                    0.05],
    ["Chemlight (Yellow)",          "Chemlight_Yellow",                 0.05],
    ["Explosive Charge",            "DemoCharge_Remote_Mag",            3],
    ["Satchel Charge",              "SatchelCharge_Remote_Mag",        5],
    ["Claymore Mine",               "ClaymoreDirectionalMine_Remote_Mag",  3],
    ["APERS Mine",                  "APERSMine_Range_Mag",              2],
    ["APERS Bounding Mine",         "APERSBoundingMine_Range_Mag",      3],
    ["APERS Tripwire Mine",         "APERSTripMine_Wire_Mag",           3],
    ["M6 SLAM AT Mine",             "SLAMDirectionalMine_Wire_Mag",    3]
];

NATO_Uniform_Classes = [
    ["Combat Fatigues (MTP)",       "U_B_CombatUniform_mcam",          0],
    ["Combat Fatigues (MTP) (Tee)", "U_B_CombatUniform_mcam_tshirt",   0],
    ["Heli Pilot Coveralls",        "U_B_HeliPilotCoveralls",          0.5],
    ["Ghillie Suit",                "U_B_GhillieSuit",                 2],
    ["Pilot Coveralls",             "U_B_PilotCoveralls",              0.5],
    ["Recon Fatigues (MTP)",        "U_B_CombatUniform_mcam_vest",     0],
    ["Wetsuit",                     "U_B_Wetsuit",                     1]
];

NATO_Vest_Classes = [
    ["Carrier Lite (Green)",        "V_PlateCarrier1_rgr",     3],
    ["Carrier Rig (Green)",         "V_PlateCarrier2_rgr",     4],
    ["Carrier GL Rig (Green)",      "V_PlateCarrierGL_rgr",    4],
    ["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr",  4],
    ["Chest Rig (Green)",           "V_Chestrig_rgr",          1],
    ["Rebreather",                  "V_RebreatherB",           5],
    ["Slash Bandolier (Green)",     "V_BandollierB_rgr",       0],
    ["Tactical Vest (Black)",       "V_TacVest_blk",           2]
];

NATO_Backpack_Classes = [
    ["Assault Pack (MTP)",          "B_AssaultPack_mcamo",          2],
    ["Carryall Backpack (MTP)",     "B_Carryall_mcamo",             6],
    ["Kitbag (MTP)",                "B_Kitbag_mcamo",               5],
    ["Steerable Parachute",         "B_Parachute",                  4],
    ["Tactical Backpack (MTP)",     "B_TacticalPack_mcamo",         4],
    ["UAV Bag",                     "B_UAV_01_backpack_F",          25]
];

NATO_Helmet_Classes = [
    ["Beanie (Camo)",               "H_Watchcap_camo",         0],
    ["Booniehat (MTP)",             "H_Booniehat_mcamo",       0],
    ["Crew Helmet",                 "H_HelmetCrew_B",          1],
    ["ECH",                         "H_HelmetB",               1],
    ["ECH (Desert)",                "H_HelmetB_desert",        1],
    ["ECH (Grass)",                 "H_HelmetB_grass",         1],  
    ["Heli Crew Helmet",            "H_CrewHelmetHeli_B",      1],
    ["Heli Pilot Helmet",           "H_PilotHelmetHeli_B",     1],
    ["Military Cap (MTP)",          "H_MilCap_mcamo",          0],
    ["Pilot Helmet",                "H_PilotHelmetFighter_B",  2]
];

NATO_Glass_Classes = [
    ["Aviator Glasses",             "G_Aviator",                        0],
    ["Combat Goggles",              "G_Combat",                         0],
    ["Diving Goggles",              "G_B_Diving",                       2],
    ["Low Profile Goggles",         "G_Lowprofile",                     0],
    ["Shades (Black)",              "G_Shades_Black",                   0],
    ["Spectacle Glasses",           "G_Spectacles",                     0],    
    ["Tactical Shades",             "G_Tactical_Black",                 0],
    ["Tactical Glasses",            "G_Tactical_Clear",                 0]
];

NATO_Support_Classes = [
    ["Binoculars",                  "Binocular",                   1], 
    ["First Aid Kit",               "FirstAidKit",                 0.5],
    ["GPS",                         "ItemGPS",                     5],
    ["Laser Designator",            "Laserdesignator",             10],
    ["Laser Designator Batteries",  "LaserBatteries",              1],
    ["Medikit",                     "Medikit",                     5],
    ["Mine Detector",               "MineDetector",                5],
    ["NV Goggles (Brown)",          "NVGoggles",                   1],
    ["Rangefinder",                 "Rangefinder",                 5],
    ["Toolkit",                     "ToolKit",                     5],
    ["UAV Terminal",                "B_UAVTerminal",               10]
];


// List of classes of support that can be requested
// Format [Display Name, Array Name, Cost Multiplier, Add Command Type, UniqueID for searching]
LOGPAC_Dialog_Helper = [
    ["Individual Weapons",      NATO_Weapons_Classes,           2,  WeaponType,     0],
    ["Crew Served Weapons",     NATO_CrewWeapons_Classes,       1,  BackpackType,   1],
    ["Weapon Accessories",      NATO_WpnAccessory_Classes,      1,  ItemType1,      2],
    ["Magazines and Ammo",      NATO_Magazine_Classes,          1,  MagazineType,   3],
    ["Uniforms",                NATO_Uniform_Classes,           1,  ItemType1,      4],
    ["Vests",                   NATO_Vest_Classes,              1,  ItemType1,      5],
    ["Backpacks",               NATO_Backpack_Classes,          1,  BackpackType,   6],
    ["Helmets",                 NATO_Helmet_Classes,            1,  ItemType1,      7],
    ["Eyepro",                  NATO_Glass_Classes,             1,  ItemType1,      8],
    ["Support Items",           NATO_Support_Classes,           1,  ItemType1,      9]
];


// Takes item class number (UniqueID) and item name (Cfg name).
// Searches for the item, and returns the price, or -1 if it can't find it
FindItemCost = {    

    _ItemClassNum = _this select 0;
    _ItemName = _this select 1;
    _ItemCost = -1;
    _CostMultiplier = 1;
       
    _ArraytoSearch = [];
    {
        _ComparisonArray = _x select 4;
        if (_ComparisonArray == _ItemClassNum) then { 
            _ArraytoSearch = _x select 1; 
            _CostMultiplier = _x select 2;
        };        
    } forEach LOGPAC_Dialog_Helper;
       
    
    // If an array is found, will search it by class name for the specified cost
    if (count _ArraytoSearch != 0) then {
        {
            if (_ItemName == _x select 1) then {
                _ItemCost = _x select 2;
                _ItemCost = _ItemCost * _CostMultiplier;
            };
        } forEach _ArraytoSearch;
    };    
        
    _ItemCost;
};

player globalchat "Support loaded.";