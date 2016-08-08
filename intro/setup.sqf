// Sets player skill levels - irrelevant unless you can switch to teammates, which may be implemented in the future.
// Skill level by default is that of a regular army leader
[player, 3] call SetAISkill;

cutText ["", "BLACK FADED", 5];
0 fadeSound 0;
_EnvScript = execVM "settings\environment_settings.sqf";
waitUntil {scriptDone _EnvScript};

call compile preprocessFileLineNumbers "scripts\DisableMapTextures\mapSwitchTextures.sqf";  

_ZoneScript = execVM "zones\zone_placement.sqf";
waitUntil {scriptDone _ZoneScript};

[] execVM "scripts\ShowOSD\SITREP_Info.sqf";

cutText ["", "BLACK IN", 2];
2 fadeSound 1;
