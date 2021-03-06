// Predefined scripts
Script_UnbeachBoat = compileFinal preprocessfileLineNumbers "scripts\UnbeachBoat\UnbeachBoat.sqf";
Script_OpenConstruct = compileFinal preprocessfileLineNumbers "base_management\Construction_Open.sqf";
//Script_DragAmmo = compileFinal preprocessfileLineNumbers "scripts\DragAmmo\DragAmmo.sqf";
Script_GID = compileFinal preprocessfileLineNumbers "scripts\LxOPS\lxOPS.sqf";


// Debug
//DebugObj = player addaction ["Map objects", "scripts\MapMapping\Objects.sqf","",2, false, false, ""];
Debug_Boat = player addAction ["Boat start", "intro\BoatStart.sqf", "", 0, false, false, ""];
Debug_SqdMan = player addAction ["Sqd Man", "base_management\SquadMan_Open.sqf", "", 0.5, false, false, ""];
//Debug_DragAmmo = player addAction ["Drag Ammo", { call DragAmmo_Begin}, "", 1, false, false, ""];
//Debug_GID = player addAction ["Object Positioning", "scripts\LxOPS\lxOPS.sqf","",10, false, false,""];
//Debug_Construct = player addAction ["Construct", "base_management\Construction_Open.sqf", "", 8, false, false, ""];
//Debug_SL = player addAction ["Boat flip", Script_UnbeachBoat,"",10,false,false,""];
//Debug_Flip = player addAction ["Restart keybidnings", "settings\key_bindings.sqf", "", 10, false, false, ""];
//DebugZones = player addaction ["Map zones", "zones\zone_placement.sqf", "", 2, false, false, ""];
//DebugLocn = player addaction ["Map locations", "scripts\MapMapping\Locations.sqf","",2, false, false, ""];
//DebugMapping = player addaction ["Map roads", "scripts\MapMapping\RoadNetwork.sqf","", 2, false, false, ""];
// Debug_Scripting = player addaction ["Spawn objects", "spawn\NATO_HQ.sqf","",10, false, true, ""];
//Debug_ChooseEnv = player addaction ["Change Environment Settings","settings\environment_settings.sqf","", 0,false,false,""];
//Debug_GameSettings = player addaction ["Change Game Settings", "settings\game_settings.sqf","",0,false,false,""];
//Debug_ChooseBase = player addaction ["Choose Base Settings", "settings\base_type.sqf","",0,false,false,""];
//Debug_BaseLocations = player addaction ["Find base locations", "scripts\BasePlacement\rand_hq_placement.sqf","",0,false,false,""];
//Debug_BaseManual = player addaction ["Choose base location", "scripts\BasePlacement\choose_hq_placement.sqf","",0,false,false,""];

// Set up log for debugging
player createDiarySubject ["DUWS-Debug", "DUWS-Debug"];




// Array of bases
NATO_BaseArray = [];

// Custom Definitions
SIDE_BLUE = 0;
SIDE_OPFOR = 1;
SIDE_AAF = 2;
SIDE_NONE = 10;

// Game settings (overridden by the dialog)
Zone_Generation_Chance = 1;     // Probability of generating a zone
NATO_Zones = 1;                 // Number of starting NATO Zones
CSAT_Zone_Chance = 0.2;         // Probability of an enemy zone belonging to CSAT.

// Color Tags
TanColor_Tag = "<t color='#FFFFCC'>";
RedColor_Tag = "<t color='#FF0000'>";
LightBlue_Tag = "<t color='#00b7ff'>";
GreenColor_Tag = "<t color='#15ff00'>";
BlueColor_Tag = "<t color='#99d5ff'>";

// Custom Functions

// RandRange - returns a random number between [low, high]
// ArrayAdd - adds the elements of two arrays
// ArraySub - subtracts the elements of one array from another


// Rounds a floating point number to a certain number of decimal places
// Arguments are [floating point number, num decimal places]
RoundFloat = {
    _FloatNum = _this select 0;
    _Multiplier = 10 ^ (_this select 1);
    
    _returnValue = _FloatNum * _Multiplier;
    _returnValue = round _returnValue;
    _returnValue = _returnValue / _Multiplier;
    
    _returnValue;
}; 

// RandRange takes [low, high] as inputs and returns a random number within that range.
// Automatically corrects if the low and high values are switched.
RandRange = {
    private ["_low", "_high"];
    _low = _this select 0;
    _high = _this select 1;
    _returnValue = -1;    
    if (_low > _high) then {
        _returnValue = _high + random (_low - _high);
    } else { 
        _returnValue = _low + random (_high - _low); 
    };    
    _returnValue;
};

// Takes [low, high, # decimal places] and returns a random number rounded to that many decimal places
RandRange_Round = {
    _RandNumber = [_this select 0, _this select 1] call RandRange;
    _returnValue = [_RandNumber, _this select 2] call RoundFloat;
    
    _returnValue;
};


// ArrayAdd takes [_inputArray, _additionArray] as inputs and adds the elements of the arrays together.
// Returns an error if the dimensions of the arrays do not match.
// Does NOT check to make sure that array contents are compatible for addition.
ArrayAdd = {
    _inputArray = _this select 0;
    _additionArray = _this select 1;
    _returnValue = [];       
    
    _inputArraySize = count _inputArray - 1;
    _additionArraySize = count _additionArray - 1;    
        
    // Check to ensure array dimensions are compatible
    if (_inputArraySize != _additionArraySize) then {
        hintC "ERROR: Array dimensions do not match!";
    } else {                
        for "_x" from 0 to _inputArraySize do
        {
            _firstArg = _inputArray select _x;
            _secondArg = _additionArray select _x;
            _result = _firstArg + _secondArg;
                        
            _returnValue = _returnValue + [_result];            
        };                
    };
    
    _returnValue;
};


// ArraySub takes [_inputArray, _subArray] as inputs and subtracts the latter elements from the former.
// Returns an error if the dimensions of the arrays do not match.
// Does NOT check to make sure that array contents are compatible for subtraction.
ArraySub = {
    _inputArray = _this select 0;
    _subArray = _this select 1;
    _returnValue = [];       
    
    _inputArraySize = count _inputArray - 1;
    _subArraySize = count _subArray - 1;    
        
    // Check to ensure array dimensions are compatible
    if (_inputArraySize != _subArraySize) then {
        hintC "ERROR: Array dimensions do not match!";
    } else {                
        for "_x" from 0 to _inputArraySize do
        {
            _firstArg = _inputArray select _x;
            _secondArg = _subArray select _x;
            _result = _firstArg - _secondArg;
                        
            _returnValue = _returnValue + [_result];            
        };                
    };
    
    _returnValue;
};

// Takes a position as input and returns the closest distance to a zone.  Takes distance to center of zone, not the edge.
DistToNearestZone = {
    _curPos = _this select 0;
    _closestZone = 99999;
    
    {            
        _neighborLoc = _x select 0;        
        _distance = _curPos distance _neighborLoc; 
        
         
        if ( _distance <= _closestZone) then {        
            _closestZone = _distance;
        };     
    } forEach Zone_Array;
    
    _closestZone;
};

// MLog adds [_text] to the mission log, accessible through the diary
MLog = {
    _text = _this select 0;
    
    [player, "Mission Log", _text] call BIS_fnc_createLogRecord;
};

// PLog takes [_speaker, _text] as arguments
// PLog displays [_text] to player chat with [_speaker] being the speaker, and adds it to the chat log accessible through the diary
PLog = {
    _speaker = _this select 0;
    _text = _this select 1;
    
    _speaker sideChat _text;
       
    _finalText = format["%1: %2", name _speaker, _text];
    [_speaker, "Chat", _finalText] call BIS_fnc_createLogRecord;
};


// DLog takes [_text] as input and adds it to the debugging log accessible through the diary.  Displays on screen as well.
DLog = {
    _text = _this select 0;
    
    player globalChat _text;
    
    //[player, "Debugging", _text] call BIS_fnc_createLogRecord;        // Removed because it was creating numerous duplicate entries
    player createDiaryRecord ["DUWS-Debug", ["Debug", _text]];
};

// Takes [unit] as an argument and returns a string abbreviation of the unit's rank.
Rank_Abbrev = {
    _unit = _this select 0;
    _rankLong = rank _unit;
    _returnValue = "ERR";
    
    switch (_rankLong) do
    {
      case "PRIVATE": {     _returnValue = "PVT"; };      
      case "CORPORAL": {    _returnValue = "CPL"; };            
      case "SERGEANT": {    _returnValue = "SGT"; };
      case "LIEUTENANT": {  _returnValue = "LT";  };
      case "CAPTAIN": {     _returnValue = "CPT"; };
      case "MAJOR": {       _returnValue = "MAJ"; };
      case "COLONEL": {     _returnValue = "COL"; };            
    };

    _returnValue;
}


