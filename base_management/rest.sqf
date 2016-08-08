// Skip forward in time - approximately six hours, give or take an hours
_TimeSkipped = [5, 7] call RandRange;
skipTime _TimeSkipped;

// Heal damage to player and squad members
player setdammage 0;
{
    _x setdammage 0;
} forEach units group player;

// Save the game
enableSaving true;
saveGame;
enableSaving false;

hint "You and your squad has been healed and rested.";

// Give a SITREP for the new time
[] execVM "scripts\ShowOSD\SITREP_Info.sqf";