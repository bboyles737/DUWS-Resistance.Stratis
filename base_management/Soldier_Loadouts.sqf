// Returns array of:
// [Total loadout price, weapon price, ammo price, item price]
CalcLoadoutCost = {
    _SoldierClassRequest = _this select 0;        
    _PriceArray = [];
    
    player globalchat format ["Arg: %1", _SoldierClassRequest];
    
    _WeaponCost = 0;
    _AmmoCost = 0;
    _ItemCost = 0;

    switch (_SoldierClassRequest) do {
    
        // Ammo Bearer
        case "B_Soldier_A_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrier1_rgr"] call FindItemCost;
            _Backpack =         [6, "B_Carryall_mcamo"] call FindItemCost;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MX 6.5mm Assault Rifle w/ IR Laser Pointer and ACO (Red)
            _PriWeapon =        [0, "ARifle_MX_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Acc_Pointer_IR"] call FindItemCost) +
                                ([2, "Optic_ACO"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 5;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 22 +
                                ([3, "100Rnd_65x39_caseless_mag"] call FindItemCost) * 2 +
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "NLAW_F"] call FindItemCost) +
                                ([3, "1Rnd_HE_Grenade_shell"] call FindItemCost) * 5 +
                                ([3, "HandGrenade"] call FindItemCost) * 4 +
                                ([3, "MiniGrenade"] call FindItemCost) * 2 +
                                ([3, "SmokeShell"] call FindItemCost) * 3 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 3 +
                                ([3, "SmokeShellBlue"] call FindItemCost) * 2 +
                                ([3, "SmokeShellOrange"] call FindItemCost) * 2 +
                                ([3, "Chemlight_Green"] call FindItemCost) * 4;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };
        
        
        // Autorifleman
        case "B_Soldier_AR_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrier2_rgr"] call FindItemCost;
            _Backpack =         0;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MX SW 6.5mm LMG w/ IR Laser Pointer
            _PriWeapon =        [0, "ARifle_MX_SW_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Acc_Pointer_IR"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "100Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +                                                                
                                ([3, "HandGrenade"] call FindItemCost) * 2 +                                
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };
        
        
        // Combat Lifesaver
        case "B_Medic_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrier2_rgr"] call FindItemCost;
            _Backpack =         [6, "B_AssaultPack_mcamo"] call FindItemCost;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXC 6.5mm w/ IR Laser Pointer
            _PriWeapon =        [0, "ARifle_MXC_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Acc_Pointer_IR"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 11 +
                                ([9, "Medikit"] call FindItemCost);
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +                                                                
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +
                                ([3, "SmokeShellOrange"] call FindItemCost) * 1 +
                                ([3, "SmokeShellBlue"] call FindItemCost) * 1 +
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };        
        
        
        // Crewman
        case "B_Crew_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam_vest"] call FindItemCost;
            _Vest =             [5, "V_BandollierB_rgr"] call FindItemCost;
            _Backpack =         0;
            _Helmet =           [7, "H_HelmetCrew_B"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXC 6.5mm 
            _PriWeapon =        [0, "ARifle_MXC_F"] call FindItemCost;
            _PriWeaponAccy =    0;
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 2 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +                                
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        }; 
        

        // Engineer
        case "B_Engineer_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_Chestrig_rgr"] call FindItemCost;
            _Backpack =         [6, "B_Kitbag_mcamo"] call FindItemCost;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXC 6.5mm w/ IR Pointer and Holosight
            _PriWeapon =        [0, "ARifle_MXC_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Acc_Pointer_IR"] call FindItemCost) +
                                ([2, "Optic_Holosight"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       ([9, "MineDetector"] call FindItemCost) +
                                ([9, "Toolkit"] call FindItemCost);
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 2 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +
                                ([3, "SmokeShellBlue"] call FindItemCost) * 1 +
                                ([3, "SmokeShellOrange"] call FindItemCost) * 1 +
                                ([3, "SatchelCharge_Remote_Mag"] call FindItemCost) * 1 +
                                ([3, "DemoCharge_Remote_Mag"] call FindItemCost) * 2 +
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };
        
        
        // Explosive Specialist
        case "B_Soldier_Exp_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrier2_rgr"] call FindItemCost;
            _Backpack =         [6, "B_Kitbag_mcamo"] call FindItemCost;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXC 6.5mm w/ IR Pointer and Holosight
            _PriWeapon =        [0, "ARifle_MXC_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Acc_Pointer_IR"] call FindItemCost) +
                                ([2, "Optic_Holosight"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       ([9, "MineDetector"] call FindItemCost) +
                                ([9, "Toolkit"] call FindItemCost);
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 2 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "DemoCharge_Remote_Mag"] call FindItemCost) * 1 +
                                ([3, "APERSMine_Range_Mag"] call FindItemCost) * 3 +
                                ([3, "APERSBoundingMine_Range_Mag"] call FindItemCost) * 3 +
                                ([3, "ClaymoreDirectionalMine_Remote_Mag"] call FindItemCost) * 2 +
                                ([3, "SLAMDirectionalMine_Wire_Mag"] call FindItemCost) * 2 +
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };
        
        
        // Grenadier
        case "B_Soldier_GL_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrierGL_rgr"] call FindItemCost;
            _Backpack =         0;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MX 3GL 6.5mm w/ ACO
            _PriWeapon =        [0, "ARifle_MX_GL_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_ACO"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 2 +
                                ([3, "MiniGrenade"] call FindItemCost) * 2 +
                                ([3, "1Rnd_HE_Grenade_shell"] call FindItemCost) * 6 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +                                
                                ([3, "Chemlight_Green"] call FindItemCost) * 2 +
                                ([3, "1Rnd_Smoke_Grenade_shell"] call FindItemCost) * 2 +
                                ([3, "1Rnd_SmokeGreen_Grenade_shell"] call FindItemCost) * 1 +
                                ([3, "1Rnd_SmokeBlue_Grenade_shell"] call FindItemCost) * 1 +
                                ([3, "1Rnd_SmokeOrange_Grenade_shell"] call FindItemCost) * 1;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };        
        
        
        // Helicopter Crew
        case "B_Helicrew_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_HeliPilotCoveralls"] call FindItemCost;
            _Vest =             [5, "V_TacVest_blk"] call FindItemCost;
            _Backpack =         0;
            _Helmet =           [7, "H_CrewHelmetHeli_B"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXC Carbine w/ Holosight
            _PriWeapon =        [0, "ARifle_MXC_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_Holosight"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // No sidearm
            _SecWeapon =        0;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 4 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +
                                ([3, "SmokeShellBlue"] call FindItemCost) * 1 +
                                ([3, "SmokeShellOrange"] call FindItemCost) * 1 +
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };             
        
        
        // Helicopter Pilot
        case "B_Helipilot_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_HeliPilotCoveralls"] call FindItemCost;
            _Vest =             [5, "V_TacVest_blk"] call FindItemCost;
            _Backpack =         0;
            _Helmet =           [7, "H_PilotHelmetHeli_B"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // Vermin SMG w/ Holosight
            _PriWeapon =        [0, "SMG_01_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_Holosight_SMG"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // No sidearm
            _SecWeapon =        0;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_45ACP_Mag_SMG_01"] call FindItemCost) * 4 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +
                                ([3, "SmokeShellBlue"] call FindItemCost) * 1 +
                                ([3, "SmokeShellOrange"] call FindItemCost) * 1 +
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };           
        

        // Marksman
        case "B_Soldier_M_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrier1_rgr"] call FindItemCost;
            _Backpack =         0;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXM 6.5mm w/ RCO and IR Pointer
            _PriWeapon =        [0, "ARifle_MXM_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_HAMR"] call FindItemCost) +
                                ([2, "Acc_Pointer_IR"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 8 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 2 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +                                
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };        
        

        // Missile Specialist AA
        case "B_Soldier_AA_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrierSpec_rgr"] call FindItemCost;
            _Backpack =         [6, "B_AssaultPack_mcamo"] call FindItemCost;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXC 6.5mm w/ IR Pointer and Holosight
            _PriWeapon =        [0, "ARifle_MXC_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_Holosight"] call FindItemCost) +
                                ([2, "Acc_Pointer_IR"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            // Titan MPRL
            _Launcher =         [0, "Launch_B_Titan_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 2 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +                                
                                ([3, "Chemlight_Green"] call FindItemCost) * 2 +
                                ([3, "Titan_AA"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon + _Launcher;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };        
        
        
        // Missile Specialist AT
        case "B_Soldier_AT_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrierSpec_rgr"] call FindItemCost;
            _Backpack =         [6, "B_AssaultPack_mcamo"] call FindItemCost;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MXC 6.5mm w/ IR Pointer and Holosight
            _PriWeapon =        [0, "ARifle_MXC_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_Holosight"] call FindItemCost) +
                                ([2, "Acc_Pointer_IR"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            // Titan MPRL
            _Launcher =         [0, "Launch_B_Titan_short_F"] call FindItemCost;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 6 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 2 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +                                
                                ([3, "Chemlight_Green"] call FindItemCost) * 2 +
                                ([3, "Titan_AT"] call FindItemCost) * 3;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon + _Launcher;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };


        // Paratrooper
        case "B_Soldier_PG_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_CombatUniform_mcam"] call FindItemCost;
            _Vest =             [5, "V_PlateCarrierSpec_rgr"] call FindItemCost;
            _Backpack =         [6, "B_Parachute"] call FindItemCost;
            _Helmet =           [7, "H_HelmetB"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // MX 6.5mm w/ IR Pointer and ACO
            _PriWeapon =        [0, "ARifle_MX_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_ACO"] call FindItemCost) +
                                ([2, "Acc_Pointer_IR"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        [0, "hgun_P07_F"] call FindItemCost;
            
            // Titan MPRL
            _Launcher =         0;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             [0, "NVGoggles"] call FindItemCost;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_65x39_caseless_mag"] call FindItemCost) * 10 +                                
                                ([3, "16Rnd_9x21_Mag"] call FindItemCost) * 3 +
                                ([3, "HandGrenade"] call FindItemCost) * 1 +
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +                                
                                ([3, "Chemlight_Green"] call FindItemCost) * 2;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon + _Launcher;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };


        // Pilot
        case "B_Pilot_F":
        {
            player globalchat "Calc cost";
        
            // Uniform Items
            _Uniform =          [4, "U_B_PilotCoveralls"] call FindItemCost;
            _Vest =             0;
            _Backpack =         [6, "B_Parachute"] call FindItemCost;
            _Helmet =           [7, "H_PilotHelmetFighter_B"] call FindItemCost;
            
            player globalchat "Calc cost 2";
            
            // Vermin w/ Holosight
            _PriWeapon =        [0, "SMG_01_F"] call FindItemCost;
            _PriWeaponAccy =    ([2, "Optic_Holosight_SMG"] call FindItemCost);
                                
            player globalchat "Calc cost 3";
                                
            // PO7 9mm Pistol
            _SecWeapon =        0;
            
            // Titan MPRL
            _Launcher =         0;
            
            player globalchat "Calc cost 4";
            
            // Misc Items
            _NVGs =             0;
            _Medical =          ([9, "FirstAidKit"] call FindItemCost) * 1;
            _OtherItems =       0;
            
            player globalchat "Calc cost 5";
            
            // Magazines
            _MagCost =          ([3, "30Rnd_45ACP_Mag_SMG_01"] call FindItemCost) * 4 +                                
                                ([3, "SmokeShell"] call FindItemCost) * 1 +
                                ([3, "SmokeShellGreen"] call FindItemCost) * 1 +                                
                                ([3, "Chemlight_Green"] call FindItemCost) * 1;
                                
            player globalchat "Calc cost 6";
            
            _WeaponCost = _PriWeapon + _PriWeaponAccy + _SecWeapon + _Launcher;
            _AmmoCost = _MagCost;
            _ItemCost = _Uniform + _Vest + _Backpack + _Helmet + _NVGs + _Medical + _OtherItems;
            
            player globalchat format ["Costs %1, %2, %3", _WeaponCost, _AmmoCost, _ItemCost];
            
            _PriceArray = [_WeaponCost + _AmmoCost + _ItemCost, _WeaponCost, _AmmoCost, _ItemCost];
        };        
    };
    
    _PriceArray;
};
/*
NATO_Soldier_Loadouts = [
   ["Ammo Bearer",              "B_Soldier_A_F",        NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Autorifleman",             "B_Soldier_AR_F",       NATO_Soldier_Cost,  Standard_Training_CostMult, Standard_Operator],
   ["Combat Life Saver",        "B_Medic_F",            NATO_Medic_Cost,    Standard_Training_CostMult, Standard_Operator],
   ["Crewman",                  "B_Medic_F",            NATO_Crew_Cost,     Standard_Training_CostMult, Tracked_Operator],
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
]; */
