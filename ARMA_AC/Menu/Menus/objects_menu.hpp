#include "defines.hpp"

class ac_objects_menu {
	idd = 1234563;
	movingEnable = true;
	enableSimulation = true;

	class controls {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Wupuha)
		////////////////////////////////////////////////////////

		class object_background: IGUIBack
		{
			idc = 2200;
			x = 0.181215 * safezoneW + safezoneX;
			y = 0.177022 * safezoneH + safezoneY;
			w = 0.637571 * safezoneW;
			h = 0.645958 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class other_menus: RscCombo
		{
			idc = 2100;
			x = 0.611575 * safezoneW + safezoneX;
			y = 0.126024 * safezoneH + safezoneY;
			w = 0.207211 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class objects_menu_header: RscText
		{
			idc = 1000;
			text = "ARMA_AC : Objects Spawn Menu"; //--- ToDo: Localize;
			x = 0.181215 * safezoneW + safezoneX;
			y = 0.126024 * safezoneH + safezoneY;
			w = 0.43036 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
		};
		class objects_list: RscListbox
		{
			idc = 1500;
			x = 0.189184 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.21518 * safezoneW;
			h = 0.560964 * safezoneH;
		};
		class spawned_list: RscListbox
		{
			idc = 1501;
			x = 0.595636 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.21518 * safezoneW;
			h = 0.611961 * safezoneH;
		};
		class spawn_type_combo: RscCombo
		{
			idc = 2101;
			x = 0.189184 * safezoneW + safezoneX;
			y = 0.771982 * safezoneH + safezoneY;
			w = 0.21518 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class delete_all_btn: RscButton
		{
			idc = 1600;
			text = "Delete all objects"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.245016 * safezoneH + safezoneY;
			w = 0.143453 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Actions on spawned objects :"; //--- ToDo: Localize;
			x = 0.412334 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.175332 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.2};
			sizeEx = 0.9 * GUI_GRID_H;
		};
		class repair_all_btn: RscButton
		{
			idc = 1601;
			text = "Repair all objects"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.313012 * safezoneH + safezoneY;
			w = 0.143453 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class reammo_all_btn: RscButton
		{
			idc = 1602;
			text = "Re-Ammo/Fuel all objects"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.381008 * safezoneH + safezoneY;
			w = 0.143453 * safezoneW;
			h = 0.0339978 * safezoneH;
			sizeEx = 0.8 * GUI_GRID_H;
		};
		class delete_selected_btn: RscButton
		{
			idc = 1603;
			text = "Delete selected object"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.483001 * safezoneH + safezoneY;
			w = 0.143453 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class repair_selected_btn: RscButton
		{
			idc = 1604;
			text = "Repair selected object"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.550997 * safezoneH + safezoneY;
			w = 0.143453 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class reammo_selected_btn: RscButton
		{
			idc = 1605;
			text = "Re-Ammo/Fuel selected object"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.618992 * safezoneH + safezoneY;
			w = 0.143453 * safezoneW;
			h = 0.0339978 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class teleport_selected_btn: RscButton
		{
			idc = 1606;
			text = "Teleport on selected object"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.686988 * safezoneH + safezoneY;
			w = 0.143453 * safezoneW;
			h = 0.0339978 * safezoneH;
			sizeEx = 0.85 * GUI_GRID_H;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

	};
};