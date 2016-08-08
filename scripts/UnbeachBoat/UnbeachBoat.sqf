// Adopted from SaoK's "Whole Lotta Altis"
// Limited movement to only ships
private ["_list"];

["Running unbeach boat script."] call DLog;

_list = (getposATL player) nearEntities [["Ship"], 15]; // Find ships within 15m of player location
{
    // Only moves empty boats
    if (count crew _x == 0) then 
    {
        _dir = ([player, _x] call BIS_fnc_dirTo);       // Finds direction to boat so it moves away from the shore
        _x setpos [(getposATL _x select 0)+((sin _dir)*3),(getposATL _x select 1)+((cos _dir)*3),0.3];
        _x setvectorUp [0,0,1];
    };
} forEach _list;
