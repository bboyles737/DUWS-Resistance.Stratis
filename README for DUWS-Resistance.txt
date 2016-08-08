DUWS: Resistance

Version 0.24 (7AUG16-):
- Updated to Eden Editor settings
- Removed LxOPS script
- Removed ammo script

Version 0.23 (14JUN15):
- Modified LxOPS script to alphabetize lists, fixed a bug in which it was jumping list selection for the alphabetized list,
  and fixed the "Goto" function so it works properly.  The alphabetized list isn't quite completely alphabetized, but it's   close.
- Can now move objects on construction dialog box
- Height no longer resets to 0 when switching objects in construction dialog
- Limited implementation of dragging ammo containers

Version 0.22 (09-10JUN15):
- Added Construction dialog box and added config settins for that dialog in a separate script file (objects currently don't cost anything)
- Added Squad Manager dialog box which displays members of the player's group, skill levels in integer form (skill % * 100), and rank abbreviation
- Randomly generated AI skills are now roudned to two decimal places
- Added RandRange_Round function accordingly
- Added Rank_Abbrev function which gives a two or three letter abbrevation of unit's rank
- Adjusted boat squad spawn mechanics - now they spawn at the player's location in the hopes of keeping the boat standing bug from happening.
- Reverted boat startup to two teams of five to simplify command and control in the boats.

Version 0.21 (04-05JUN15):
- Incorporated boat unbeaching script and keybinding from Whole Lotta Altis
- Set fireteams on initial squad to appropriate team colors
- Swapped initial boat starting locations so they are more in formation
- Changed debug logging to a separate diary entry to prevent duplicate and confusing entries.
- Map now - by default - loads with the topographic representation, NOT satellite imagery
- Created functions for setting AI Skill based on a given "tier" (from ASR AI3)
- Revamped seven basic classes and refined to have similar uniform types (e.g. everyone generally wears the same uniform) and carry a bit more ammo (especially 40mm grenades) while reducing diversity of smoke grenade colors, generally.
- Spawn functions for these revised classes created
- Initial squad spawn takes advantage of automatically generated AI skill levels
- Fixed bug so that soldiers will not start standing up in the boat
- Fixed bug in which keybindings became unstuck within a minute of setting

Version 0.20 (03JUN15):
Revisiting DUWS-R after a long hiatus
- Added three logging functions (debug, mission, and chat)
- Found and fixed a bug in dynamic weather generation which would not properly account for weather type selection.
- Refactored old setup routines to use the new logging methods
- Refined zone creation so that all helipads in a given zone are displayed
- Startup script now sets up zonse and the environment settings.
- Screen starts black and fades in once environment is set.
- There is a bug now in which multiple logs of the same name are being produced.
- Can now select a boat insertion location
- Creates two boats and a full rifle squad plus Medic
- Moved config settings to a global file

Version 0.14 (04JUN14):
- Implemented LOGPAC system: dynamically generated menu to select various items, displays the cost from config files, and you can purchase items which are deposited in the base's ammo crate.
- LOGPAC requests are sent to the base you are at when making the requests
- Implemented Cmd Point HUD status from Whole Lotta Altis
- Created error message display format for HUD
- 14 Soldier Class loadouts have been scripted for cost calculations.  Still need to finish the remaining 19 as well as implement the actual unit creation routines
- Minor adjustments to base layout format to keep objects from spawning incorrectly (namely, a delay between the base building and other objects)
- Created base array information (that is, a global list of friendly bases, their locations, and associated ammo crate)

Version 0.13 (03JUN14):
- Modified zone spawning script to give priority to helipad locations versus other named localities
- Will reserve single road connector "road ends" for use in mission sites instead of spawning additional "prefab" zones.
- Unified environment script and dialog settings (consolidated from two script files to a single one)
- Tried to update game settings dialog but was encountering unexpected crashes - hard-coding zone setup for now and will revisit this later.
- Zones start by default as CSAT and AAF zones and then BLUFOR zones are converted based on the initial settings.
- Tied spawning of BLUFOR base (manual placement) to occupying an existing zone.  Future work: allow occupation of existing buildings.
- Zone entry and exit triggers/notifications implemented
- Resting/saving game at base now implemented (skips random between 5-7 hours time)
- Added cost tables for NATO equipment.  Will need to adjust them significantly, but they're there.

Version 0.12 (02JUN14):
- Created "ArrayAdd" and "ArraySub" functions which add or subtract similarly-sized arrays from each other.
- Modified the LxOPS script - will now automatically include a handle to call ArraySub on a base location (which the user must define)
- When you select a filter in LxOPS it automatically copies to the clipboard a list of all objects selected along with the index number.  This allows searching and faster reference for objects (initially tried to incorporate a sorting algorithm, but was running into trouble with non-number arrays)
- BLUFOR FOB HQ now takes a position argument and will spawn the base at that location.
- Created functions that identify all non-standard road intersections (e.g. != 2 connections) and named locations for future mission/base spawn uses
- Automatically creates zones on a map based on named locations, with zone size scaling by the significance of the zones (capital > city > village > location)
- Zones do not overlap.  Functions created to set/change zone ownership.
- Airports, helipads, and ports within a zone are added as icons to the map.
- Change of vision: For game settings, you select the number of zones out of the total possible named zones on the map (preference given to larger zones).  BLUFOR HQ will not occupy a separate non-zone area - it will occupy a zone.  Alternatively, "forced entry" mode starts the player without a HQ and in need of securing a zone to expand further.


Version 0.11 (15MAY14):
- BLUFOR FOB HQ initialization is largely complete in a controlled environment.  Still need to do Patrol Base, as well as test it on random positions.
- Can set up base start variables (FOB or Patrol Base) for random or user-positioned start.
- Incorporated third party LxOPS 3D position editor for content creation
- Incorporated third party Bullet Path script, but have left it disabled due to resource usage
- Can now set game setup variables with error checking (e.g. WARCOM zones, AI skill levels, starting AP/CP)
- Dynamic weather now includes minimum transition times / cycle duration, and minimum fog altitudes.

Version 0.10 (14MAY14):
- Added ability to set the season and approximate time of day that the mission starts.  These dates and times are somewhat randomized, but are adjusted to fit dawn and dusk timeframes based on the selected season.
- Added the placeholder to implement AAF integration, though this has not been implemented yet.
- Found and fixed a bug in the "ShowOSD" which displays the current date, time, and location.  It was misrepresenting "Southwest" as "Northwest"
- Implemented dynamic weather system
- Multiplayer is NOT supported.


Version 0.0 (Start 12MAY14):
- OBJECTIVES: analyze and clean up existing code.  Ended with a fair amount of understanding, as well as much weeping and gnashing of teeth.  I decided it would be easier and cleaner to build it from scratch, importing and cleaning up modules from DUWS piece by piece.

CREDITS:

Original DUWS by kibot

OSD Sitrep script by Jiri Wainar
HUD adapted from "Whole Lotta Altis" by Sa0k
Mapsize script by Kempco
Objects placed using lxOPS by Lynx