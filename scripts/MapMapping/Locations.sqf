_locnList = nearestLocations [Map_Center, ["NameCity","NameCityCapital","NameLocal","NameMarine","NameVillage"], Map_Half];
player globalchat format ["Named locations on the map: %1", count _locnList];

counter = 0;
{
    counter = counter + 1;    
    _thisLoc = getPos _x;
    _thisType = type _x;
    
    _MarkerName = format["location%1", counter];
    _Marker = createMarker [str(_MarkerName), _thisLoc];    
    _Marker setMarkerShape "ICON";
    _Marker setMarkerType "mil_destroy";
    
    switch (_thisType) do {
    
        case "NameMarine": {
            _Marker setMarkerColor "ColorBlue";    
        };
        
        case "NameLocal": {
            _Marker setMarkerColor "ColorYellow";
        };
        
        case "NameVillage": {
            _Marker setMarkerColor "ColorGreen";
        };
        
        case "NameCity": {
            _Marker setMarkerColor "ColorRed";
        };
        
        case "NameCitycapital": {
            _Marker setMarkerColor "ColorPink";
        };
    };
    
    
    _Marker setMarkerText text _x;    
} forEach _locnList;

player globalchat "All locations marked.";
sleep 2;


// NOTE: Mount indicates a knoll.  There are many, many mounts out there.
_locnList = nearestLocations [Map_Center, ["CityCenter","FlatArea","FlatAreaCity","FlatAreaCitySmall","Hill", "Airport", "BorderCrossing", "Strategic", "StrongpointArea", "VegetationBroadleaf", "VegetationFir", "VegetationPalm", "VegetationVineyard", "ViewPoint"], Map_Half];
player globalchat format ["Additional locations on the map: %1", count _locnList];

counter = 0;
{
    counter = counter + 1;    
    _thisLoc = getPos _x;
    _thisType = type _x;
    
    _MarkerName = format["otherloc%1", counter];
    _Marker = createMarker [str(_MarkerName), _thisLoc];    
    _Marker setMarkerShape "ICON";
    _Marker setMarkerType "mil_flag";
    
    /*switch (_thisType) do {
    
        case "NameMarine": {
            _Marker setMarkerColor "ColorBlue";    
        };
        
        case "NameLocal": {
            _Marker setMarkerColor "ColorYellow";
        };
        
        case "NameVillage": {
            _Marker setMarkerColor "ColorGreen";
        };
        
        case "NameCity": {
            _Marker setMarkerColor "ColorRed";
        };
        
        case "NameCitycapital": {
            _Marker setMarkerColor "ColorPink";
        };
    }; */   
    
    _Marker setMarkerText _thisType;    
} forEach _locnList;
