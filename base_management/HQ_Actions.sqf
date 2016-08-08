_BaseArray = _this select 0;
LOGPAC_Ammo = _BaseArray select 1;
_HQ_Officer = _BaseArray select 2;

// Actions added to the base HQ officer
_ActionPriority = 3;

// For requesting units and vehicles
_HQ_Officer addaction [GreenColor_Tag + "Soldier Request" + "</t>", { 
    _handle = execVM "base_management\Soldier_Request.sqf";
    }, "", _ActionPriority, true, true, "", "_this == player"];
    
// Passes the base ammo crate object for adding LOGPAC objects
_HQ_Officer addaction [GreenColor_Tag + "LOGPAC Request" + "</t>", { 
    _handle = execVM "base_management\LOGPAC_Request.sqf";
    }, "", _ActionPriority, true, true, "", "_this == player"];

// Rest/save/refit
_HQ_Officer addaction [LightBlue_Tag + "Rest" + "</t>","base_management\rest.sqf", "", _ActionPriority, true, true, "", "_this == player"];



//_HQ_Officer addaction ["<t color='#ff00ff'>Player stats</t>","dialog\info\info.sqf", "", _ActionPriority, true, true, "", "_this == player"];
//_HQ_Officer addaction ["<t color='#ffb700'>High Cmd Manager</t>","dialog\squad\squadmng.sqf", "", _ActionPriority, true, true, "", "_this == player"];
//_HQ_Officer addaction ["<t color='#ffb700'>FOB Manager</t>","dialog\fob\FOBmanageropen.sqf", "", _ActionPriority, true, true, "", "_this == player"];