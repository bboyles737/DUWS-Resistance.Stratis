class Construction_Dialog {

	idd = 1314;
	movingenable = true;

    class controls {
    
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Victor Troska, v1.063, #Ninuqa)
        ////////////////////////////////////////////////////////

        class Construct_Background: IGUIBack
        {
            idc = 2200;
            x = 1.65 * GUI_GRID_W + GUI_GRID_X;
            y = 1 * GUI_GRID_H + GUI_GRID_Y;
            w = 16 * GUI_GRID_W;
            h = 22.5 * GUI_GRID_H;
        };
        class Construct_Frame: RscFrame
        {
            idc = 1800;
            text = "Construction"; //--- ToDo: Localize;
            x = 2 * GUI_GRID_W + GUI_GRID_X;
            y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 15 * GUI_GRID_W;
            h = 22 * GUI_GRID_H;
        };
        
        class Construct_Category: RscCombo      // Construction category selection
        {
            idc = 2100;      
            x = 2.5 * GUI_GRID_W + GUI_GRID_X;
            y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 14 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            onLBSelChanged = "[2100, 1500] call ConstructionDialog_Items;";
        };
        
        class Construct_ItemList: RscListbox    // Construction items
        {
            idc = 1500;
            x = 3 * GUI_GRID_W + GUI_GRID_X;
            y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 7.5 * GUI_GRID_H;
            onLBSelChanged = "[1500] call ConstructionDialog_SelectItem;";
        };
        class Construct_ElevSlider: RscSlider
        {
            idc = 1900;
            x = 2.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14 * GUI_GRID_H + GUI_GRID_Y;
            w = 13.5 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
            onSliderPosChanged = "[1900] call ConstructionDialog_HeightSlider;";
        };
        class Construct_OrientSlider: RscSlider
        {
            idc = 1901;
            x = 2.5 * GUI_GRID_W + GUI_GRID_X;
            y = 17 * GUI_GRID_H + GUI_GRID_Y;
            w = 13.5 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
            onSliderPosChanged = "[1901] call ConstructionDialog_OrientSlider;";
        };
        class Construct_ElevSliderLabel: RscText
        {
            idc = 1000;
            text = "Elevation: "; //--- ToDo: Localize;
            x = 2.5 * GUI_GRID_W + GUI_GRID_X;
            y = 13 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 0.5 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class Construct_OrientSliderLabel: RscText
        {
            idc = 1001;
            text = "Orientation: "; //--- ToDo: Localize;
            x = 2.5 * GUI_GRID_W + GUI_GRID_X;
            y = 16 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 0.5 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class Construct_BuildButton: RscButton
        {
            idc = 1600;
            text = "Build"; //--- ToDo: Localize;
            x = 2.5 * GUI_GRID_W + GUI_GRID_X;
            y = 20 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
            action = "[] call ConstructionDialog_BuyItem; closeDialog 0;";
        };
        class Construct_MoveButton: RscButton
        {
            idc = 1601;
            text = "Reposition"; //--- ToDo: Localize;
            x = 7.5 * GUI_GRID_W + GUI_GRID_X;
            y = 20 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
            action = "[] spawn ConstructionDialog_MoveItem";
        };
        class Construct_Exit: RscButton
        {
            idc = 1602;
            text = "Exit"; //--- ToDo: Localize;
            x = 12.5 * GUI_GRID_W + GUI_GRID_X;
            y = 20 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
            action = "[] call ConstructionDialog_CancelItem; closeDialog 0;";
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    
    };
};

