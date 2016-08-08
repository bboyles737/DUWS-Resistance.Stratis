DragAmmo_Begin = {
    // Find draggable ammo box
    _LookingAt = cursorTarget;
    _DistanceTo = player distance _LookingAt;
    _LookingClass = typeOf _LookingAt;

    _ValidTarget = false;

    [format ["Drag Ammo: Looking at %1 at distance %2", _LookingClass, _DistanceTo]] call DLog;
    // Must be looking at the object and be within 3m of it to drag
    {
        if (_x == _LookingClass && _DistanceTo < 3) then {        
            _ValidTarget = true;
        };
    } forEach Ammo_Draggable;

    if (!_ValidTarget) then {
        // If you aren't pointing at an ammo box, checks to see if you are within 3m of a valid ammo box
        _entityList = (getposATL player) nearEntities 3;        // Find all entities within 3m of player
        _ClosestObj = 999;
        
        {
            _CurrentListItem = _x;
            {                       
                _CurrentListItemClass = typeOf _CurrentListItem;
                if (_CurrentListItemClass == _x) then {                
                    _Distance = player distance _CurrentListItem;
                    [format ["Second pass, setting closest obj to %1 at %2m", _CurrentListItemClass, _Distance]] call DLog;
                    if (_Distance < _ClosestObj) then {
                        _ClosestObj = _Distance;
                        _ValidTarget = true;
                        _LookingAt = _CurrentListItem;                    
                    };
                };                        
            } forEach Ammo_Draggable;
            
            ["Second pass entity."] call DLog;
        } forEach _entityList;
    };
    
    if (_ValidTarget) then {
    ["Now dragging object."] call DLog;
    
    missionNamespace setVariable ["CarryObj", _ValidTarget];    
    
    player playAction "grabDrag";
    player forceWalk true;
    sleep 2.0;
    _LookingAt attachTo [player, [0, 1, 0.2]];       
    _xkcd = 22;
    _dropAmmoID = player addAction ["Release ammo", { call DragAmmo_End}, [_xkcd], 6];
    ["Did we get this far?"] call DLog;
    
    sleep 2.0;
    ["Ended."] call DLog;
    
    [] spawn DragAmmo_End;    
    };
};

DragAmmo_End = {
    _xkcd = _this select 0;
    [format ["Running DAE: xkcd %1", _xkcd]] call DLog;
    /*
    if (isNil missionNamespace getVariable "CarryObj") then {
        _CarriedObj = missionNamespace getVariable "CarryObj";
        ["Detaching."] call DLog;        
    detach _LookingAt;
    */
    player playMove "amovpknlmstpsraswrfldnon";
	player forceWalk false;	    
    };
};






/*
_list = (getposATL player) nearEntities 5; // Find entities within 5m of the player
_NearestObj = nil;
_ClosestView = 10;  // Must be looking within 10deg of object
{
    _CurrentListItem = _x;
    // Finds the closest moveable object as defined in the object_class.sqf in settings.    
    
    {
        _CurrentListClassName = typeOf _CurrentListItem;
        if (_x == _CurrentListClassName) then {        
            
            // Player must be looking at the object
            _PlayerAzimuth = getDirVisual player;
            _AzimuthToObj = [player, _CurrentListItem] call BIS_fnc_dirTo;
            [format ["Found valid object: %1 is dist %2 from player at dir %3 (player %4).", _CurrentListClassName, player distance _CurrentListItem, _AzimuthToObj, _PlayerAzimuth]] call DLog;
        };        
    } forEach Ammo_Draggable;
    
    //[format ["Outer draggable: %1 is %2", _x, typeOf _x]] call DLog;
} forEach _list;
*/
/*
player playAction "grabDrag";
player forceWalk true;

["Weapon off and force walk enabled."] call DLog;

sleep 10.0;

["Weapon on and force walk disabled."] call DLog;

// player playAction "WeaponOn";
player forceWalk false;
*/

["Drag Script completed."] call DLog;
