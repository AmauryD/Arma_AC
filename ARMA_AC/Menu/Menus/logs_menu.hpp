#include "defines.hpp"

class ac_logs_menu {
	idd = 1234561;
	movingEnable = true;
	enableSimulation = true;

	class controls {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Cihefi)
		////////////////////////////////////////////////////////

		class logs_background: IGUIBack
		{
			idc = 2200;
			x = 0.181215 * safezoneW + safezoneX;
			y = 0.177021 * safezoneH + safezoneY;
			w = 0.637571 * safezoneW;
			h = 0.645958 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			x = 17 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 0.5 * GUI_GRID_H;
		};
		class other_menus: RscCombo
		{
			idc = 2100;
			x = 0.611575 * safezoneW + safezoneX;
			y = 0.126024 * safezoneH + safezoneY;
			w = 0.207211 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class logs_menu_header: RscText
		{
			idc = 1000;
			text = "ARMA_AC : Logs Menu"; //--- ToDo: Localize;
			x = 0.181215 * safezoneW + safezoneX;
			y = 0.126024 * safezoneH + safezoneY;
			w = 0.43036 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
		};
		class logs_list: RscListbox
		{
			idc = 1500;
			x = 0.189184 * safezoneW + safezoneX;
			y = 0.245016 * safezoneH + safezoneY;
			w = 0.621632 * safezoneW;
			h = 0.356977 * safezoneH;
		};
		class logs_more_infos: RscStructuredText
		{
			idc = 1100;
			text = "The infos about the current selected log will be displayed here."; //--- ToDo: Localize;
			x = 0.189184 * safezoneW + safezoneX;
			y = 0.618992 * safezoneH + safezoneY;
			w = 0.621632 * safezoneW;
			h = 0.186988 * safezoneH;
		};
		class logs_hacks_only_cbx: RscCheckbox
		{
			idc = 2800;
			x = 0.189184 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.0239089 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Show only hack warnings"; //--- ToDo: Localize;
			x = 0.221063 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.151423 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class logs_copy_current_btn: RscButton
		{
			idc = 1600;
			text = "Copy current log"; //--- ToDo: Localize;
			x = 0.683301 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.127514 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class logs_copy_all_btn: RscButton
		{
			idc = 1601;
			text = "Copy all logs"; //--- ToDo: Localize;
			x = 0.547818 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.127514 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};