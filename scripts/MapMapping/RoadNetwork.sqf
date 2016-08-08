_roadList = Map_Center nearRoads Map_Half;

player globalchat format ["Road segments on the map: %1", count _roadList];

counter = 0;

{
    counter = counter + 1;
    //_thisSegment = _x;
    _thisLoc = getPos _x;
    _connections = roadsConnectedTo _x;
    _numConnections = count _connections;
    
    if (_numConnections != 2) then
    {
        _MarkerName = format["segment%1", counter]; 
        _Marker = createMarker [str(_MarkerName), _thisLoc];
        _Marker setMarkerShape "ICON";        
        _Marker setMarkerType "mil_destroy";
        
        if (_numConnections == 0) then {
            _Marker setMarkerColor "ColorRed";
            _Marker setMarkerText "";
        }
        else { 
            _Marker setMarkerColor "ColorGreen";
            _Marker setMarkerText format ["%1", _numConnections];
        };        
    };    
} forEach _roadList;

player globalchat "All road segments marked.";
