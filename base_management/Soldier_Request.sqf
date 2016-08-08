player globalchat "Entering Loadout Cost for AmmoBearer";

_Cost = [];
_Cost = ["B_Pilot_F"] call CalcLoadoutCost;

player globalchat format ["Price: %1", _Cost];

//_handle = createDialog "Soldier_Request_Dialog";  
//waitUntil {dialog};