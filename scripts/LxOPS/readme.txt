////////////////////////////////////////////////////////
//                                                    //
//                  2013 Arma 3 Script                //
//           	   by     Lynx                        //
//             - http://www.clan-gid.fr -             //
//                                                    //
//             Object Positioning System V1.1         //
////////////////////////////////////////////////////////


Usage :
This script provides a userfriendly precise 3D object placement tool based on the BIS Splendid camera.
This is a usefull tool for confirmed mission designer.

Installation :
1 - Put the LxOPS directory inside your mission
2 - declare #include "LxOPS\lxOPS_dlg.hpp" in your description.ext
3 - create an empty script
5 - create a repeatedly radio trigger with the following activation code : nul = [] execVM "LxOPS\lxOPS.sqf";
4 - play with the object positioning system(radio menu 0-0-1) - press copy button for the locked object
- paste the code stuff in your script using the copy button (ctrl + V) - unlock object and create new one, enjoy
5 - call your script at the beginning of the mission (server side)
6 - When you ve finished, delete the line #include "LxOPS\lxOPS_dlg.hpp" from your description.ext, the radio trigger
    and the LxOPS directory from your mission before the release.

Features:
- Objects list not hard coded (CfgVehicles config explorer with scope > 0)
- creation/deletion
- translation/rotation with increment options (0.001m - 10m, 0.001° to 10°)
- Pitch/Bank Rotation
- save created object in a script called on server side when you want
- ATL/ASL coordinates system
- Object Filter
- Log object charracteristics in RPT
- Surface/Submarine object placement

Usage :
The script provides means to create/delete/translate/rotate all placable objects in 3D view by exploring the CfgVehicles.
Press New object to create a new object, lock it with the Lock button. You can change its class by clicking in the list.
The list is all your CfgVehicles with scope > 0, so becarefull, there is some objects not placeable, module_.. for example.
Do not use is for IA spawn, use BIS function instead.

When an object is locked, you can translate and rotate it. Choose the increment you want in the combobox.
Press the copy button to copy all the code stuff required to spawn the object.
Go to your spawn script (in the mission demo its initBuildings.sqf) and press ctrl+v at the end of the file to write the code.
Go back to the preview (press alt to switch the Splendide camera speed), unlock the object and play again ; )
You can use the log button to log object characteritics in the RPT file

V1.31
Fix the ATL altitude float to string conversion

V1.3
Add float to string conversion

V1.2
Add new combo box to enable/disable object simulation
Changed log button to log required code in RPT
Changed updated GUI Resources 

V1.1
Pitch/Bank feature
UI improvment
Surface/Submarine object placement
Add log button to write object characteristic in RPT
Add filter combobox
Add ASL/ATL switch coordinates system
Add Reset button for horizontality, normal surface, ATL level, ASL level
Code improvment

V1.0
First release. Only objects on ground.

Known Issue(s)/Bug(s):
There is a correlation between Splendid Camera and Vehicles list when you use the scroll bar of the list, use scroll mouse instead.
Dont forget to press alt when you switch from preview and desktop to paste the code, because of alt+tab, switch the camera speed.


Credits & thanks:
Bohemia Interactive
Karel Moricky author of the BIS splendid camera
