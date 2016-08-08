_objList = nearestObjects [Map_Center, ["Land_Pier_F"], Map_Half];
player globalchat format ["Pier objects on the map: %1", count _objList];

counter = 0;
{
    counter = counter + 1;    
    _thisLoc = getPosASL _x;    
    _elevation = _thisLoc select 2;
    
    // Must be a pier near sea level
    if (_elevation < 10) then {
    
        _MarkerName = format["location%1", counter];
        _Marker = createMarker [str(_MarkerName), _thisLoc];    
        _Marker setMarkerShape "ICON";
        _Marker setMarkerType "mil_destroy";
        _Marker setMarkerColor "ColorYellow";
        _Marker setMarkerText format ["%1: %2", counter, _elevation];    
    };
    
} forEach _objList;

//_objList = nearestObjects [Map_Center, ["Land_HelipadCircle_F", "Land_HelipadCivil_F", "Land_HelipadEmpty_F", "Land_HelipadRescue_F", "Land_HelipadSquare_F"], Map_Half];
_objList = nearestObjects [Map_Center, Helo_Capability, Map_Half];
player globalchat format ["Helipad objects on the map: %1", count _objList];

{
    counter = counter + 1;    
    _thisLoc = getPos _x;        
    

    _MarkerName = format["location%1", counter];
    _Marker = createMarker [str(_MarkerName), _thisLoc];    
    _Marker setMarkerShape "ICON";
    _Marker setMarkerType "mil_destroy";
    _Marker setMarkerColor "ColorGreen";
    _Marker setMarkerText format ["%1", counter];    

} forEach _objList;

player globalchat "All objects marked.";