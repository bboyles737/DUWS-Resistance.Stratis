// Gives the stats for each of the soldiers in your squad
_playerGroup = group player;
_NUM = 0;
{
    _NUM = _NUM + 1;
    _Name = name _x;
    _AimAcc = _x skill "aimingAccuracy";
    _AimShake = _x skill "aimingShake";
    _AimSpeed = _x skill "aimingSpeed";
    _SpotDist = _x skill "spotDistance";
    _SpotTime = _x skill "spotTime";
    _Courage = _x skill "courage";
    _Reload = _x skill "reloadSpeed";
    _Command = _x skill "commanding";
    _genSkill = _x skill "general";
    // [format ["%1: AimAcc %2, AimShk %3, AimSpd %4, SpotDst %5, SpotTime %6, Courage %7, Reload %8, Cmd %9, General %10", _Name, _AimAcc, _AimShake, _AimSpeed, _SpotDist, _SpotTime, _Courage, _Reload, _Command, _genSkill]] call DLog;
    
 /*   [_x, 0] call SetAISkill;
    
    _AimAcc = _x skill "aimingAccuracy";
    _AimShake = _x skill "aimingShake";
    _AimSpeed = _x skill "aimingSpeed";
    _SpotDist = _x skill "spotDistance";
    _SpotTime = _x skill "spotTime";
    _Courage = _x skill "courage";
    _Reload = _x skill "reloadSpeed";
    _Command = _x skill "commanding";
    _genSkill = _x skill "general";
    [format ["%1: AimAcc %2, AimShk %3, AimSpd %4, SpotDst %5, SpotTime %6, Courage %7, Reload %8, Cmd %9, General %10", _Name, _AimAcc, _AimShake, _AimSpeed, _SpotDist, _SpotTime, _Courage, _Reload, _Command, _genSkill]] call DLog; 
    */
} forEach units _playerGroup;

_removeMines = "getNumber (_x >> 'canDeactivateMines') == 1" configClasses (configFile >> "CfgVehicles");
_NUM = 0;
/*
{
    _NUM = _NUM + 1;
    [format ["%2: %1", _x select 1, _NUM]] call DLog;
} forEach _removeMines; */

_x = _removeMines select 0;

for [{_z = 0}, {_z < count _x}, {_z = _z + 1}] do 
{
    //["Test"] call DLog;
    [format ["%1: %2", _z, name _x]] call DLog;
};


