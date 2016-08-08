// Construction types and classifications, called by the Construction Dialog Box
// Takes [id of category RscCombo] as an argument
ConstructionDialog_Category = {
    _CategoryID = _this select 0;
    lbClear _CategoryID;
    lbAdd [_CategoryID, "Ammo"];
    lbAdd [_CategoryID, "FOB"];
    lbAdd [_CategoryID, "Patrol Base"];
    lbSetCurSel [_CategoryID, 0];
};

// Specific items to add to the Construction Dialog list, based on category
// Takes [id of category, id of list] as an argument
ConstructionDialog_Items = {
    _CategoryID = _this select 0;    
    _CategoryText = lbText [_CategoryID, lbCurSel _CategoryID];
    _ItemListID = _this select 1;    
    lbClear _ItemListID;
    
    switch (_CategoryText ) do {
        case "Ammo": {
            lbAdd [_ItemListID, "NATO Explosives"];
            lbAdd [_ItemListID, "NATO Weapons"];
            lbAdd [_ItemListID, "NATO Launchers"];
            lbAdd [_ItemListID, "NATO Ammo"];
            lbAdd [_ItemListID, "NATO Support"];
        };
        
        case "FOB": {
            lbAdd [_ItemListID, "Flagpole"];
            lbAdd [_ItemListID, "HQ Building"];
            lbAdd [_ItemListID, "Generator"];
            lbAdd [_ItemListID, "Fuel Can"];
        };
        
        case "Patrol Base": {
            lbAdd [_ItemListID, "Field Desk"];
            lbAdd [_ItemListID, "Laptop"];
            lbAdd [_ItemListID, "Field Tent"];
        };    
    };
};

// Takes [text of object] and returns the class of the object
ConstructionDialog_TextToClass = {
    _ObjectText = _this select 0;
    _ReturnValue = "";
    
    switch (_ObjectText) do {
        case "Field Desk": {        _ReturnValue = "Land_CampingTable_F";   };
        case "Field Tent": {        _ReturnValue = "Land_TentA_F";          };
        case "Flagpole": {          _ReturnValue = "Flag_US_F";             };
        case "Fuel Can": {          _ReturnValue = "Land_CanisterFuel_F";   };
        case "Generator": {         _ReturnValue = "Land_PowerGenerator_F"; };
        case "HQ Building": {       _ReturnValue = "Land_Cargo_HQ_V1_F";    };
        case "Laptop": {            _ReturnValue = "Land_Laptop_unfolded_F";};
        case "NATO Ammo": {         _ReturnValue = "Box_NATO_Ammo_F";       };
        case "NATO Explosives": {   _ReturnValue = "Box_NATO_AmmoOrd_F";    };
        case "NATO Launchers": {    _ReturnValue = "Box_NATO_WpsLaunch_F";  };
        case "NATO Support": {      _ReturnValue = "Box_NATO_Support_F";    };
        case "NATO Weapons": {      _ReturnValue = "Box_NATO_Wps_F";        };
    };

    _ReturnValue;
};