class Soldier_Request_Dialog
{
    idd = -1;
	movingenable = false;
    objects[] = {};
    class controlsBackground {};
    
    class controls 
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Victor Troska, v1.063, #Cafene)
        ////////////////////////////////////////////////////////

        class UnitRequest_Background: IGUIBack
        {
            idc = 2200;
            x = 7 * GUI_GRID_W + GUI_GRID_X;
            y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 26.5 * GUI_GRID_W;
            h = 11.5 * GUI_GRID_H;
        };
        class Soldier_Selection_Frame: RscFrame
        {
            idc = 1800;
            text = "Soldier Selection"; //--- ToDo: Localize;
            x = 8 * GUI_GRID_W + GUI_GRID_X;
            y = 3 * GUI_GRID_H + GUI_GRID_Y;
            w = 24 * GUI_GRID_W;
            h = 8 * GUI_GRID_H;
        };
        class Unit_Type_Text: RscText
        {
            idc = 1000;
            text = "Unit Type"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class LOGPAC_Type_Combo: RscCombo
        {
            idc = 2100;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 16.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.8 * GUI_GRID_H;
        };
        class Unit_BaseCost_Text: RscText
        {
            idc = 1001;
            text = "Base Cost"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Unit_Base_Cost_Display: RscText
        {
            idc = 1002;
            text = "XXX"; //--- ToDo: Localize;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Request_OK_Button: RscButton
        {
            idc = 1600;
            text = "OK"; //--- ToDo: Localize;
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 12 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            // action = "_nul = [] execvm ""base_management\LOGPAC_AddItems.sqf""";
        };
        class Weapon_Cost_Title: RscText
        {
            idc = 1003;
            text = "Weapon Cost"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Weapon_Cost_Display: RscText
        {
            idc = 1004;
            text = "XXX"; //--- ToDo: Localize;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Ammo_Cost_Title: RscText
        {
            idc = 1005;
            text = "Ammo Cost"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 8 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Ammo_Cost_Display: RscText
        {
            idc = 1006;
            text = "XXX"; //--- ToDo: Localize;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 8 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Base_Percent_Display: RscText
        {
            idc = 1007;
            text = "XXX%"; //--- ToDo: Localize;
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Weapon_Percent_Display: RscText
        {
            idc = 1008;
            text = "XXX%"; //--- ToDo: Localize;
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Ammo_Percent_Display: RscText
        {
            idc = 1009;
            text = "XXX%"; //--- ToDo: Localize;
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 8 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Items_Cost_Title: RscText
        {
            idc = 1010;
            text = "Other Items"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Items_Cost_Display: RscText
        {
            idc = 1011;
            text = "XXX"; //--- ToDo: Localize;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Item_Percent_Display: RscText
        {
            idc = 1012;
            text = "XXX%"; //--- ToDo: Localize;
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Attributes_Frame: RscFrame
        {
            idc = 1801;
            text = "Attributes"; //--- ToDo: Localize;
            x = 23 * GUI_GRID_W + GUI_GRID_X;
            y = 5 * GUI_GRID_H + GUI_GRID_Y;
            w = 9 * GUI_GRID_W;
            h = 6 * GUI_GRID_H;
        };
        class Attributes_Display: RscText
        {
            idc = 1013;
            text = "Unit Attributes Here"; //--- ToDo: Localize;
            x = 23.5 * GUI_GRID_W + GUI_GRID_X;
            y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 7.5 * GUI_GRID_W;
            h = 4.5 * GUI_GRID_H;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////


    };
};