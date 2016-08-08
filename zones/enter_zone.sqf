_place   =   _this select 0; 
_trigger =   _this select 1;

// Notifications defined under notifications\notifications.hpp

// Notification upon entering the zone
sleep 0.5;
["Enter_Location",[_place]] call bis_fnc_showNotification;


// Notification upon leaving the zone
waitUntil {
count _trigger < 1;
}; 
["Leave_Location",[_place]] call bis_fnc_showNotification;    

