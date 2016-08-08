_selected_index = lbCurSel 1500;

_G = units group player;
_x = _G select _selected_index;

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

//[format ["%1: AimAcc %2, AimShk %3, AimSpd %4, SpotDst %5, SpotTime %6, Courage %7, Reload %8, Cmd %9, General %10", _Name, _AimAcc, _AimShake, _AimSpeed, _SpotDist, _SpotTime, _Courage, _Reload, _Command, _genSkill]] call DLog;

ctrlSetText [1001, format["Aim Shake: %1", _AimShake * 100]];
ctrlSetText [1002, format["Accuracy: %1", _AimAcc * 100]];
ctrlSetText [1003, format["Aim Speed: %1", _AimSpeed * 100]];
ctrlSetText [1004, format["Spot Dist: %1", _SpotDist * 100]];
ctrlSetText [1005, format["Reflexes: %1", _SpotTime * 100]];
ctrlSetText [1006, format["Reload: %1", _Reload * 100]];
ctrlSetText [1007, format["Courage: %1", _Courage * 100]];
ctrlSetText [1008, format["Command: %1", _Command * 100]];

ctrlSetText [1009, format["Name: %2 %1", _Name, [_x] call Rank_Abbrev]];

/*
_selected_soldier = duws_operator_list select _selected_index; // get the selected soldier from the array of soldier using the selected index

// extract the skill value and do x100
_selected_soldier_aim = (_selected_soldier select 0)*100;
_selected_soldier_reflexes = (_selected_soldier select 1)*100;
_selected_soldier_spotting = (_selected_soldier select 2)*100;
_selected_soldier_courage = (_selected_soldier select 3)*100;
_selected_soldier_comms = (_selected_soldier select 4)*100;
_selected_soldier_reload = (_selected_soldier select 5)*100;
_selected_soldier_spendable_pts = (_selected_soldier select 13);


_selected_soldier_timeheal = round ((_selected_soldier select 12)/60);


_selected_soldier_role = _selected_soldier select 6;
_selected_soldier_status = _selected_soldier select 7;

 ctrlSetText [1006, format["%1",_selected_soldier_aim]];
 ctrlSetText [1007, format["%1",_selected_soldier_reflexes]];
 ctrlSetText [1008, format["%1",_selected_soldier_spotting]];
 ctrlSetText [1009, format["%1",_selected_soldier_courage]];
 ctrlSetText [1010, format["%1",_selected_soldier_comms]];
 ctrlSetText [1011, format["%1",_selected_soldier_reload]];
 
 ctrlSetText [1017, format["%1",_selected_soldier_spendable_pts]];

 ctrlSetText [1014, format["%1",_selected_soldier_role]];
 ctrlSetText [1013, format["%1",_selected_soldier_status]];
 ctrlSetText [1016, format["%1 minutes",_selected_soldier_timeheal]];
 

switch (_selected_soldier_status) do
{
  case "Ready": {
	buttonSetAction [1601, "execVM 'dialog\operative\operator_recruit.sqf'"];
	ctrlSetText [1601, "DEPLOY (5 CP)"];
  };
  
  case "Injured": {
	buttonSetAction [1601, "hint ""You can't deploy this operative, he must be fully healed first"""]; 
	ctrlSetText [1601, "CANNOT DEPLOY"];	
  };
  
  case "Operating": {
	buttonSetAction [1601, "hint ""This operative is already active in this theatre of operation"""]; 
	ctrlSetText [1601, "ALREADY DEPLOYED"];	
  };
  
  case "Healed": {
	buttonSetAction [1601, "execVM 'dialog\operative\operator_recruit.sqf'"]; 
	ctrlSetText [1601, "REDEPLOY (2 CP)"];	
  };  
};
*/