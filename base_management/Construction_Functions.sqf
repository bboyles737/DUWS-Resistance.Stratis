// Takes [slider id] as argument, sets orientation slider position to the back azimuth of the player's orientation
SetOrientationSlider = {
    _OrientationSlider = _this select 0;
    
    _playerDir = direction player;
    _playerDir = _playerDir + 180;
    if (_playerDir > 360) then { _playerDir = _playerDir - 360; };
    
    sliderSetPosition [_OrientationSlider, _playerDir];
};

ConstructionDialog_MoveItem = {
    if (!isNil { missionNamespace getVariable "ConstObj"}) then {
        _Object = missionNamespace getVariable "ConstObj";
        _PlayerStartPos = getposATL player;
        closeDialog 0;                   

        sleep 0.02;                
        
        hintSilent "Use Shift-C when done repositioning or move more than 5m";
                      
        while { !dialog && { _PlayerStartPos distance (getposATL player) < 5}} do {
            _ViewPos = screenToWorld [0.5, 0.5];
            _Object setPos _ViewPos;
            _Object setVectorUp (surfaceNormal (getposATL _Object));            
            sleep 0.02;
        };
        
        if ( _PlayerStartPos distance (getposATL player) >= 5) then {
            [] call Script_OpenConstruct;
        };                
    };
};

ConstructionDialog_CancelItem = {
     if (!isNil { missionNamespace getVariable "ConstObj"}) then {
        _Object = missionNamespace getVariable "ConstObj";        
        deleteVehicle _Object;
    };
};

ConstructionDialog_BuyItem = {
    if (!isNil { missionNamespace getVariable "ConstObj"}) then {            
        _Object = missionNamespace getVariable "ConstObj";        
        
        ["Enabling object."] call DLog;
        
        // NEED TO ADD COST CALCULATIONS HERE
        
        _Object enableSimulation true;   
        missionNamespace setVariable ["ConstLastObj", _Object];
        missionNamespace setVariable ["ConstObj", nil];
    } else {
        ["ERROR: Can't buy a blank item."] call DLog;
    };
};

// Takes [ListBox id] as an argument
ConstructionDialog_SelectItem = {        
    // Check to see if there's an existing working object; if so, will remove it
    if (!isNil { missionNamespace getVariable "ConstObj"}) then {
        _Object = missionNamespace getVariable "ConstObj";
        
        deleteVehicle _Object;
    };

    _ListObj = _this select 0;
    
    disableSerialization;
    _myDisplay = findDisplay 1314;      // Finds the display of the construction dialog (id 1314)
    _SelectedItemText = (lbText [_ListObj, (lbCurSel _ListObj)]);
          
    [1901] call SetOrientationSlider;   // Ensure orientation of this new object is the back azimuth to the player       
    
	_SelectedItemClass = [_SelectedItemText] call ConstructionDialog_TextToClass;    
    
    _ObjPlacement = screenToWorld [0.5, 0.5];    
    _ObjPlacement set [2, sliderPosition 1900];
    _Object = createVehicle [_SelectedItemClass, _ObjPlacement, [], 0, "CAN_COLLIDE"];
    _Object setVectorUp (surfaceNormal (getposATL _Object));
    _Object setDir (sliderPosition 1901);    
    _Object enableSimulation false;
    
    missionNamespace setVariable ["ConstObj", _Object];    
};

// Changes the orientation of an object based on slider values
// Takes [slider id] as an argument
ConstructionDialog_OrientSlider = {
    _SliderObj = _this select 0;
    ctrlSetText [1001, format["Orientation: %1", [sliderPosition _SliderObj, 1] call RoundFloat]];

    if (!isNil { missionNamespace getVariable "ConstObj"}) then {
        _Object = missionNamespace getVariable "ConstObj";
        
        _Object setDir (sliderPosition _SliderObj);
        _Object setVectorUp (surfaceNormal (getposATL _Object));                
    };
};

// Changes the height of an object based on slider values
// Takes [slider id] as an argument
ConstructionDialog_HeightSlider = {
    _SliderObj = _this select 0;
    ctrlSetText [1000, format["Elevation: %1", [sliderPosition _SliderObj, 2] call RoundFloat]];
    
    if (!isNil { missionNamespace getVariable "ConstObj"}) then {
        _Object = missionNamespace getVariable "ConstObj";        
        _NewPos = getposATL _Object;
        
        // Adjust height according to slider
        _NewPos set [2, sliderPosition _SliderObj];
        _Object setPos _NewPos;
        _Object setVectorUp (surfaceNormal (getposATL _Object));
    };
};
