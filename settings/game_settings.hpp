class Game_Settings_Dialog
{
    idd = -1;
	movingenable = false;
    
    class controls 
    {          
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Victor Troska, v1.063, #Wegyhu)
        ////////////////////////////////////////////////////////

        class IGUIBack_2200: IGUIBack
        {
            idc = 2200;
            x = 9 * GUI_GRID_W + GUI_GRID_X;
            y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 22 * GUI_GRID_W;
            h = 22 * GUI_GRID_H;
            colorBackground[] = {0,0,0,1};
        };
        class AISettings_Frame: RscFrame
        {
            idc = 1800;
            text = "AI Skill Level"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 2 * GUI_GRID_H + GUI_GRID_Y;
            w = 20 * GUI_GRID_W;
            h = 5.5 * GUI_GRID_H;
        };
        class NATO_AI_Text: RscText
        {
            idc = 1000;
            text = "NATO:"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 3 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class CSAT_AI_Text: RscText
        {
            idc = 1001;
            text = "CSAT:"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class AAF_AI_Text: RscText
        {
            idc = 1002;
            text = "AAF:"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 6 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class NATO_AI_Edit: RscEdit
        {
            idc = 1400;
            text = "40"; 
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 3 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "AI skill level for NATO forces (0-100)"; 
        };
        class CSAT_AI_Edit: RscEdit
        {
            idc = 1401;
            text = "40"; 
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "AI skill level for CSAT forces (0-100)"; 
        };
        class AAF_AI_Edit: RscEdit
        {
            idc = 1402;
            text = "30"; 
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6 * GUI_GRID_H + GUI_GRID_Y;
            w = 2.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "AI skill level for AAF forces (0-100)"; 
        };
        class NATO_AI_PMText: RscText
        {
            idc = 1003;
            text = "+/-"; 
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 3 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class CSAT_AI_PMText: RscText
        {
            idc = 1004;
            text = "+/-"; 
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 1.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class AAF_AI_PMText: RscText
        {
            idc = 1005;
            text = "+/-"; 
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6 * GUI_GRID_H + GUI_GRID_Y;
            w = 1.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class NATO_AI_PMEdit: RscEdit
        {
            idc = 1403;
            text = "5"; 
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 3 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Variance in AI skill for NATO forces"; 
        };
        class CSAT_AI_PMEdit: RscEdit
        {
            idc = 1404;
            text = "5"; 
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Variance in AI skill for CSAT forces"; 
        };
        class AAF_AI_PMEdit: RscEdit
        {
            idc = 1405;
            text = "5"; 
            x = 18.5 * GUI_GRID_W + GUI_GRID_X;
            y = 6 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Variance in AI skill for AAF forces"; 
        };
        class AI_Skill_Text: RscText
        {
            idc = 1006;
            text = "Skill level and variance for newly created AI forces.  Min skill is 0, max skill is 100."; 
            x = 21 * GUI_GRID_W + GUI_GRID_X;
            y = 3 * GUI_GRID_H + GUI_GRID_Y;
            w = 8.5 * GUI_GRID_W;
            h = 4 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
            style = ST_MULTI;
        };
        class Game_Settings_OK: RscButton
        {
            idc = 1600;
            text = "OK"; 
            x = 17.5 * GUI_GRID_W + GUI_GRID_X;
            y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 1.5 * GUI_GRID_H;
            action = "_nul = [] execvm ""settings\set_game.sqf""";
        };
        class Zones_Frame: RscFrame
        {
            idc = 1801;
            text = "WARCOM Zones"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 8 * GUI_GRID_H + GUI_GRID_Y;
            w = 20 * GUI_GRID_W;
            h = 5.5 * GUI_GRID_H;
        };
        class Zones_NATO_Text: RscText
        {
            idc = 1007;
            text = "NATO:"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 9 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class CSAT_Zones_Text: RscText
        {
            idc = 1008;
            text = "CSAT:"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class AAF_Zones_Text: RscText
        {
            idc = 1009;
            text = "AAF:"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 12 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class NATO_Zones_Edit: RscEdit
        {
            idc = 1406;
            text = "0"; 
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 9 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Number of WARCOM Zones that NATO controls at the start."; 
        };
        class CSAT_Zones_Edit: RscEdit
        {
            idc = 1407;
            text = "3"; 
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Number of WARCOM Zones that CSAT controls at the start."; 
        };
        class AAF_Zones_Edit: RscEdit
        {
            idc = 1408;
            text = "5"; 
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = 12 * GUI_GRID_H + GUI_GRID_Y;
            w = 2 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Number of WARCOM Zones that the AAF controls at the start."; 
        };
        class RscText_1010: RscText
        {
            idc = 1010;
            text = "Number of WARCOM Zones assigned to each faction at the start.  The enemy must have at least one zone.  Max zones total is 20."; 
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 9 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 4 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
            style = ST_MULTI;            
        };
        class ZoneChars_Frame: RscFrame
        {
            idc = 1802;
            text = "Zone Characteristics"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 14 * GUI_GRID_H + GUI_GRID_Y;
            w = 20 * GUI_GRID_W;
            h = 3 * GUI_GRID_H;
        };
        class ZoneMin_Text: RscText
        {
            idc = 1011;
            text = "MinRadius"; 
            x = 10.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class ZoneMin_Edit: RscEdit
        {
            idc = 1409;
            text = "250"; 
            x = 10.5 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Minimum radius of a WARCOM zone (m)."; 
        };
        class ZoneMax_Text: RscText
        {
            idc = 1012;
            text = "MaxRadius"; 
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class ZoneMax_Edit: RscEdit
        {
            idc = 1410;
            text = "1000"; 
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Maximum radius of a WARCOM zone (m)."; 
        };
        class ZoneDist_Text: RscText
        {
            idc = 1013;
            text = "MaxDistHQ"; 
            x = 19.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class MissionDist_Text: RscText
        {
            idc = 1014;
            text = "MaxDistMission"; 
            x = 24.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class ZoneDist_Edit: RscEdit
        {
            idc = 1411;
            text = "10000"; 
            x = 19.5 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Zones are generated only to this distance from your Headquarters (starting location)."; 
        };
        class MissionDist_Edit: RscEdit
        {
            idc = 1412;
            text = "5000"; 
            x = 25 * GUI_GRID_W + GUI_GRID_X;
            y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 4.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "When you select a side mission, they are generated only this far from your current location (FOB or HQ)."; 
        };
        class ArmyPower_Frame: RscFrame
        {
            idc = 1803;
            text = "Army Power"; 
            x = 10 * GUI_GRID_W + GUI_GRID_X;
            y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 14 * GUI_GRID_W;
            h = 3.5 * GUI_GRID_H;
        };
        class NATO_AP_Text: RscText
        {
            idc = 1015;
            text = "NATO AP"; 
            x = 10.5 * GUI_GRID_W + GUI_GRID_X;
            y = 18 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class CSAT_AP_Text: RscText
        {
            idc = 1016;
            text = "CSAT AP"; 
            x = 15 * GUI_GRID_W + GUI_GRID_X;
            y = 18 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class AAF_AP_Text: RscText
        {
            idc = 1017;
            text = "AAF AP"; 
            x = 20 * GUI_GRID_W + GUI_GRID_X;
            y = 18 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class RscFrame_1804: RscFrame
        {
            idc = 1804;
            text = "Cmd Points"; 
            x = 24.5 * GUI_GRID_W + GUI_GRID_X;
            y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 5.5 * GUI_GRID_W;
            h = 3.5 * GUI_GRID_H;
        };
        class NATO_CP_Text: RscText
        {
            idc = 1018;
            text = "NATO CP"; 
            x = 25.5 * GUI_GRID_W + GUI_GRID_X;
            y = 18 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 0.75 * GUI_GRID_H;
        };
        class NATO_AP_Edit: RscEdit
        {
            idc = 1413;
            text = "0"; 
            x = 10.5 * GUI_GRID_W + GUI_GRID_X;
            y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Army Power reflects the ability of a faction to replace losses and generate new forces.  This changes throughout the campaign."; 
        };
        class CSAT_AP_Edit: RscEdit
        {
            idc = 1414;
            text = "0"; 
            x = 15.5 * GUI_GRID_W + GUI_GRID_X;
            y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Army Power reflects the ability of a faction to replace losses and generate new forces.  This changes throughout the campaign."; 
        };
        class AAF_AP_Edit: RscEdit
        {
            idc = 1415;
            text = "0"; 
            x = 20 * GUI_GRID_W + GUI_GRID_X;
            y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Army Power reflects the ability of a faction to replace losses and generate new forces.  This changes throughout the campaign."; 
        };
        class NATO_CP_Edit: RscEdit
        {
            idc = 1416;
            text = "20"; 
            x = 25.5 * GUI_GRID_W + GUI_GRID_X;
            y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3.5 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            tooltip = "Starting Command Points.  Command Points are used to recruit new units and request support assets."; 
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};