class Base_Type_Dialog
{
    idd = -1;
	movingenable = false;
    
    class controls 
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Victor Troska, v1.063, #Zyneja)
        ////////////////////////////////////////////////////////

        class BaseSelect_Background: IGUIBack
        {
            idc = 2200;
            x = 11 * GUI_GRID_W + GUI_GRID_X;
            y = 6 * GUI_GRID_H + GUI_GRID_Y;
            w = 19 * GUI_GRID_W;
            h = 13 * GUI_GRID_H;
            colorBackground[] = {0,0,0,1.0};
        };
        class BaseType_Frame: RscFrame
        {
            idc = 1800;
            text = "Base Type"; 
            x = 11.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 18 * GUI_GRID_W;
            h = 8.5 * GUI_GRID_H;
        };
        class RscCombo_2100: RscCombo
        {
            idc = 2100;
            x = 14.5 * GUI_GRID_W + GUI_GRID_X;
            y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 12 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class BaseType_Text: RscText
        {
            idc = 1000;
            text = "Choose your HQ type and site selection method.  FOBs offer more limited site selections but start with greater Army Power.  Patrol Bases are easier to hide and offer cheaper infantry recruitment though with more expensive vehicles."; 
            x = 12 * GUI_GRID_W + GUI_GRID_X;
            y = 9 * GUI_GRID_H + GUI_GRID_Y;
            w = 17 * GUI_GRID_W;
            h = 5.5 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
            style = ST_MULTI;
        };
        class ManualPlacement_Button: RscButton
        {
            idc = 1600;
            text = "Manual"; 
            x = 13 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
            tooltip = "Place your base manually.  If a Patrol Base, you can fine tune your site on the ground."; 
            action = "_nul = [] execvm ""scripts\BasePlacement\choose_hq_placement.sqf""";
        };
        class RandomSite_Button: RscButton
        {
            idc = 1601;
            text = "Random"; 
            x = 22 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
            tooltip = "Randomly selects a suitable site.  You can refine the position of a Patrol Base on the ground."; 
            action = "_nul = [] execvm ""scripts\BasePlacement\rand_hq_placement.sqf""";
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////

    };
};