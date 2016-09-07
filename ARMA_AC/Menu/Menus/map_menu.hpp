#include "defines.hpp"
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Renujo)
////////////////////////////////////////////////////////
class ac_map_menu {
	idd = 1234566;
	class controls {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Wycyra)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;

			x = 0.00588264 * safezoneW + safezoneX;
			y = 0.177021 * safezoneH + safezoneY;
			w = 0.175332 * safezoneW;
			h = 0.62896 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;

			text = "WAYPOINTS"; //--- ToDo: Localize;
			x = 0.0138523 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class teleport_waypoint_btn: RscButton
		{
			idc = 1600;

			text = "Teleport to waypoint"; //--- ToDo: Localize;
			x = 0.0138523 * safezoneW + safezoneX;
			y = 0.567996 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.0339978 * safezoneH;
			sizeEx = 0.9 * GUI_GRID_H;
		};
		class add_waypoint_btn: RscButton
		{
			idc = 1601;

			text = "Add waypoint"; //--- ToDo: Localize;
			x = 0.0138523 * safezoneW + safezoneX;
			y = 0.669989 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;

			text = "Just shift click on the map to teleport"; //--- ToDo: Localize;
			x = 0.0138523 * safezoneW + safezoneX;
			y = 0.720986 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.0679956 * safezoneH;
		};
		class delete_waypoint: RscButton
		{
			idc = 1603;

			text = "Delete waypoint"; //--- ToDo: Localize;
			x = 0.0138523 * safezoneW + safezoneX;
			y = 0.618992 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.0339978 * safezoneH;
			sizeEx = 1 * GUI_GRID_H;
		};
		class waypoints_list: RscListbox
		{
			idc = 1500;
			x = 0.0138523 * safezoneW + safezoneX;
			y = 0.245016 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.30598 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
