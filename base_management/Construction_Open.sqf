 _handle = createDialog "Construction_Dialog";
 waitUntil {dialog};
  
sliderSetRange [1900, 0, 2];    // Set elevation slider limits
sliderSetPosition [1900, 0];
ctrlSetText [1000, format["Elevation: %1", [sliderPosition 1900, 2] call RoundFloat]];

sliderSetRange [1901, 0, 360];  // Set orientation slider limits
[1901] call SetOrientationSlider;
ctrlSetText [1001, format["Orientation: %1", [sliderPosition 1901, 1] call RoundFloat]];

[2100] call ConstructionDialog_Category;    // Adds categories to construction menu; see settings\construction_objects.sqf for definition
[2100, 1500] call ConstructionDialog_Items; // Adds items to construction menu; see settings\construction_objects.sqf for definition

["Added dialog items."] call DLog;