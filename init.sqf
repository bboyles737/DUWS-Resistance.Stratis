WeatherActive = false;              // Activated after the user chooses environment settings
AAF_Active = false;                 // Re-set when the user chooses environment settings
MaxWARCOMZones = 20;                // Ties in with error checking on game settings
NATO_CP = 1000;                     // Overridden by game settings

DialogWaitFlag = false;             // Used by dialogs to signal completion

// Causes map to pull up with topographic, not satellite, view enabled.

call compile preprocessFileLineNumbers "settings\key_bindings.sqf";             // Custom key bindings

call compile preprocessFileLineNumbers "DUWS-R.sqf";                                        // Custom definitions and functions
call compile preprocessFileLineNumbers "settings\config_settings.sqf";                      // Configuration settings
call compile preprocessFileLineNumbers "scripts\BasePlacement\map_size.sqf";                // Finds the center coordinates of the given map
call compile preprocessFileLineNumbers "spawn\Spawn_Funcs.sqf";                             // DUWS Custom Spawns
_StartupScript = execVM "intro\setup.sqf";      // Does cutscenes, fade-ins, and initial setup
waitUntil {scriptDone _StartupScript};          // Pauses so that date/time are set properly before debug logs are made.


call compile preprocessFileLineNumbers "docs\help.sqf";                         // Loads DUWS:Resistance manual into the player's journal
call compile preprocessFileLineNumbers "base_management\support_costs.sqf";     // Loads item costs and availability
call compile preprocessFileLineNumbers "base_management\soldier_loadouts.sqf";  // Calculates cost and defines loadouts of new friendly soldiers
call compile preprocessFileLineNumbers "settings\object_class.sqf";             // Defines object classifications used in zone/mission creation
call compile preprocessFileLineNumbers "settings\construction_objects.sqf";     // Defines construction objects and categories and links them to class names
call compile preprocessFileLineNumbers "base_management\construction_functions.sqf";        // Functions used by the construction dialog

execVM "scripts\HUD_Info\HUD_info_updates.sqf"; // Initializes HUD and updates
// execvm "scripts\bulletpath\bullet_path.sqf";    // Enables drawing of bullet path

