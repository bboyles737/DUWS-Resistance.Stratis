class LOGPAC_Request_Dialog
{
    idd = -1;
	movingenable = false;
    objects[] = {};
    class controlsBackground {};
    
    class controls 
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Victor Troska, v1.063, #Ninyxe)
        ////////////////////////////////////////////////////////

        class LOGPAC_Background: IGUIBack
        {
            idc = 2200;
            x = 7.5 * GUI_GRID_W + GUI_GRID_X;
            y = 5 * GUI_GRID_H + GUI_GRID_Y;
            w = 25 * GUI_GRID_W;
            h = 11.5 * GUI_GRID_H;
        };
        class LOGPAC_Frame: RscFrame
        {
            idc = 1800;
            text = "Logistics Request"; //--- ToDo: Localize;
            x = 8 * GUI_GRID_W + GUI_GRID_X;
            y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 24 * GUI_GRID_W;
            h = 10.5 * GUI_GRID_H;
        };
        class LOGPAC_Type_Text: RscText
        {
            idc = 1000;
            text = "Support Type"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class LOGPAC_Type_Combo: RscCombo
        {
            idc = 2100;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 16.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.8 * GUI_GRID_H;
        };
        class LOGPAC_SUpport_Unit_Combo: RscCombo
        {
            idc = 2101;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 8 * GUI_GRID_H + GUI_GRID_Y;
            w = 16.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.8 * GUI_GRID_H;
        };
        class LOGPAC_Unit_Cost_Text: RscText
        {
            idc = 1001;
            text = "Unit Cost"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class LOGPAC_Unit_Cost_Display: RscText
        {
            idc = 1002;
            text = "XXX"; //--- ToDo: Localize;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class LOGPAC_Quantity_Text: RscText
        {
            idc = 1003;
            text = "Quantity"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 11 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class LOGPAC_Quantity_Edit: RscEdit
        {
            idc = 1400;
            text = "1"; //--- ToDo: Localize;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 11 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class Total_Cost_Text: RscText
        {
            idc = 1004;
            text = "Total Cost"; //--- ToDo: Localize;
            x = 8.5 * GUI_GRID_W + GUI_GRID_X;
            y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class LOGPAC_Total_Cost_Display: RscText
        {
            idc = 1005;
            text = "XXX"; //--- ToDo: Localize;
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class LOGPAC_OK_Button: RscButton
        {
            idc = 1600;
            text = "OK"; //--- ToDo: Localize;
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
            action = "_nul = [] execvm ""base_management\LOGPAC_AddItems.sqf""";
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////


    };
};