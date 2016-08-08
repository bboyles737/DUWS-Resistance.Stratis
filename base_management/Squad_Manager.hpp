////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Victor Troska, v1.063, #Bilipe)
////////////////////////////////////////////////////////

class Sqdman_Dialog
{
	idd = -1;
	movingenable = true;
    
    class controls {
    

        class SqdMan_Background: IGUIBack
        {
            idc = 2200;
            x = 3.5 * GUI_GRID_W + GUI_GRID_X;
            y = 5 * GUI_GRID_H + GUI_GRID_Y;
            w = 33.5 * GUI_GRID_W;
            h = 15 * GUI_GRID_H;
        };
        class Sqdman_Frame: RscFrame
        {
            idc = 1800;
            text = "Squad Manager"; //--- ToDo: Localize;
            x = 4 * GUI_GRID_W + GUI_GRID_X;
            y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 32.5 * GUI_GRID_W;
            h = 14 * GUI_GRID_H;
        };
        class Squadman_List: RscListbox
        {
            idc = 1500;
            x = 4.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 10.5 * GUI_GRID_W;
            h = 10.5 * GUI_GRID_H;
            onLBSelChanged  = "execVM 'base_management\SquadMan_Selection.sqf'"; //UI event handler	
        };
        class RscText_1000: RscText
        {
            idc = 1000;
            x = 8 * GUI_GRID_W + GUI_GRID_X;
            y = -4.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
        };
        class Sqdman_SkillFrame: RscFrame
        {
            idc = 1801;
            text = "Skills"; //--- ToDo: Localize;
            x = 16 * GUI_GRID_W + GUI_GRID_X;
            y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 19.5 * GUI_GRID_W;
            h = 6.5 * GUI_GRID_H;
        };
        class Sqdman_ExitButton: RscButton
        {
            idc = 1600;
            text = "Close"; //--- ToDo: Localize;
            x = 18 * GUI_GRID_W + GUI_GRID_X;
            y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
            action = "closeDialog 0";
        };
        class Sqdman_AimShakeText: RscText
        {
            idc = 1001;
            text = "Aim Shake: "; //--- ToDo: Localize;
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "How steadily this soldier can hold his weapon (weapon sway)"; //--- ToDo: Localize;
        };
        class Sqdman_AimAccText: RscText
        {
            idc = 1002;
            text = "Accuracy: "; //--- ToDo: Localize;
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 11 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Accuracy to include range, lead, recoil compensation, and confidence in aiming ability"; //--- ToDo: Localize;
        };
        class Sqdman_AimSpdText: RscText
        {
            idc = 1003;
            text = "Aim Speed: "; //--- ToDo: Localize;
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "How quickly he can rotate and stabilize his aim"; //--- ToDo: Localize;
        };
        class Sqdman_SpotDistText: RscText
        {
            idc = 1004;
            text = "Spot Dist: "; //--- ToDo: Localize;
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "How far away can he detect targets - visually or audibly - and the accuracy of this information"; //--- ToDo: Localize;
        };
        class Sqdman_SpotTimeText: RscText
        {
            idc = 1005;
            text = "Response Time: "; //--- ToDo: Localize;
            x = 26 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Reaction time upon seeing the enemy or seeing death, damage, explosions, etc."; //--- ToDo: Localize;
        };
        class Sqdman_ReloadText: RscText
        {
            idc = 1006;
            text = "Reload Speed: "; //--- ToDo: Localize;
            x = 26 * GUI_GRID_W + GUI_GRID_X;
            y = 11 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Time to switch or reload weapons"; //--- ToDo: Localize;
        };
        class Sqdman_Courage: RscText
        {
            idc = 1007;
            text = "Courage: "; //--- ToDo: Localize;
            x = 26 * GUI_GRID_W + GUI_GRID_X;
            y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Affects subordinate unit morale"; //--- ToDo: Localize;
        };
        class Sqdman_CommandText: RscText
        {
            idc = 1008;
            text = "Command Ability: "; //--- ToDo: Localize;
            x = 26 * GUI_GRID_W + GUI_GRID_X;
            y = 14 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Speed of sharing recognized enemy targets with the group"; //--- ToDo: Localize;
        };
        class Sqdman_InfoFrame: RscFrame
        {
            idc = 1802;
            text = "General Info"; //--- ToDo: Localize;
            x = 16 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 19.5 * GUI_GRID_W;
            h = 3.5 * GUI_GRID_H;
        };
        class Sqdman_NameText: RscText
        {
            idc = 1009;
            text = "Name: "; //--- ToDo: Localize;
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 7 * GUI_GRID_H + GUI_GRID_Y;
            w = 17.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
    };
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT END
    ////////////////////////////////////////////////////////
};

