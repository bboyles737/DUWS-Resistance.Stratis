_handle = createDialog "Base_Type_Dialog";
waitUntil {dialog};

// Base Type Options
Base_FOB = lbAdd[2100, "FOB"];
Base_Patrol = lbAdd[2100, "Patrol Base"];
lbSetCurSel [2100, Base_FOB];