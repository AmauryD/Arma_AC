#include "defines.hpp"

class ac_console_menu {
	idd = 1234564;
	movingEnable = true;
	enableSimulation = true;

	class controls {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Wiqete)
		////////////////////////////////////////////////////////

		class console_background: IGUIBack
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
		class console_menu_header: RscText
		{
			idc = 1000;
			text = "ARMA_AC : Console Menu"; //--- ToDo: Localize;
			x = 0.181215 * safezoneW + safezoneX;
			y = 0.126024 * safezoneH + safezoneY;
			w = 0.43036 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
		};
		class console_input: RscEdit
		{
			idc = 1100;
			style = 16;
			autocomplete = "scripting";
			lineSpacing = 1;
			x = 0.197154 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.605692 * safezoneW;
			h = 0.271982 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class console_output: RscEdit
		{
			idc = 1400;
			text = "command output"; //--- ToDo: Localize;
			x = 0.197154 * safezoneW + safezoneX;
			y = 0.483001 * safezoneH + safezoneY;
			w = 0.533966 * safezoneW;
			h = 0.0509967 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.7};
		};
		class execute_local_btn: RscButton
		{
			idc = 1600;
			text = "Execute LOCAL"; //--- ToDo: Localize;
			x = 0.197154 * safezoneW + safezoneX;
			y = 0.550997 * safezoneH + safezoneY;
			w = 0.119545 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class execute_global_btn: RscButton
		{
			idc = 1601;
			text = "Execute GLOBAL"; //--- ToDo: Localize;
			x = 0.428273 * safezoneW + safezoneX;
			y = 0.550997 * safezoneH + safezoneY;
			w = 0.183302 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class execute_server_btn: RscButton
		{
			idc = 1602;
			text = "Execute SERVER"; //--- ToDo: Localize;
			x = 0.627514 * safezoneW + safezoneX;
			y = 0.550997 * safezoneH + safezoneY;
			w = 0.175332 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "History"; //--- ToDo: Localize;
			x = 0.197154 * safezoneW + safezoneX;
			y = 0.601993 * safezoneH + safezoneY;
			w = 0.605692 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.2};
		};
		class history_list: RscListbox
		{
			idc = 1500;
			x = 0.197154 * safezoneW + safezoneX;
			y = 0.65299 * safezoneH + safezoneY;
			w = 0.605692 * safezoneW;
			h = 0.15299 * safezoneH;
		};
		class copy_output_btn: RscButton
		{
			idc = 1603;
			text = "Copy"; //--- ToDo: Localize;
			x = 0.739088 * safezoneW + safezoneX;
			y = 0.483001 * safezoneH + safezoneY;
			w = 0.0637571 * safezoneW;
			h = 0.0509967 * safezoneH;
		};
		class spawn_code_cbx: RscCheckbox
		{
			idc = 2800;
			x = 0.324668 * safezoneW + safezoneX;
			y = 0.550997 * safezoneH + safezoneY;
			w = 0.0239089 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Spawn code"; //--- ToDo: Localize;
			x = 0.348577 * safezoneW + safezoneX;
			y = 0.546618 * safezoneH + safezoneY;
			w = 0.0717267 * safezoneW;
			h = 0.0339978 * safezoneH;
			tooltip = "will execute the code in the background , usefull for loops"; //--- ToDo: Localize;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};
