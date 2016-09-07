#include "defines.hpp"

class ac_admin_menu {
	idd = 1234562;
	movingEnable = true;
	enableSimulation = true;

	class controls {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Jupubo)
		////////////////////////////////////////////////////////

		class admin_background: IGUIBack
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
		class admin_menu_header: RscText
		{
			idc = 1000;
			text = "ARMA_AC : Admins Menu"; //--- ToDo: Localize;
			x = 0.181215 * safezoneW + safezoneX;
			y = 0.126024 * safezoneH + safezoneY;
			w = 0.43036 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
		};
		class players_list: RscListbox
		{
			idc = 1500;
			x = 0.189184 * safezoneW + safezoneX;
			y = 0.194021 * safezoneH + safezoneY;
			w = 0.255028 * safezoneW;
			h = 0.611961 * safezoneH;
		};
		class kill_btn: RscButton
		{
			idc = 1602;
			text = "Kill"; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.245016 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Actions for selected element : "; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.19402 * safezoneH + safezoneY;
			w = 0.350664 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.2};
		};
		class tp_to_player_btn: RscButton
		{
			idc = 1600;
			text = "Teleport to player"; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.296013 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class glue_btn: RscButton
		{
			idc = 1601;
			text = "Glue"; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.34701 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class heal_btn: RscButton
		{
			idc = 1603;
			text = "Heal"; //--- ToDo: Localize;
			x = 0.579696 * safezoneW + safezoneX;
			y = 0.245016 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class tp_player_btn: RscButton
		{
			idc = 1604;
			text = "Teleport player to you"; //--- ToDo: Localize;
			x = 0.579696 * safezoneW + safezoneX;
			y = 0.296013 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
			sizeEx = 0.8 * GUI_GRID_H;
		};
		class remove_weapons_btn: RscButton
		{
			idc = 1605;
			text = "Remove gear"; //--- ToDo: Localize;
			x = 0.579696 * safezoneW + safezoneX;
			y = 0.34701 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class repair_btn: RscButton
		{
			idc = 1606;
			text = "Repair Vehicle"; //--- ToDo: Localize;
			x = 0.707211 * safezoneW + safezoneX;
			y = 0.245016 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class spectate_btn: RscButton
		{
			idc = 1607;
			text = "Spectate"; //--- ToDo: Localize;
			x = 0.707211 * safezoneW + safezoneX;
			y = 0.296013 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class kick_player: RscButton
		{
			idc = 1608;
			text = "Kick"; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.398007 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class ban_player: RscButton
		{
			idc = 1609;
			text = "Ban"; //--- ToDo: Localize;
			x = 0.579696 * safezoneW + safezoneX;
			y = 0.398007 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "Executable on you : "; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.466002 * safezoneH + safezoneY;
			w = 0.342694 * safezoneW;
			h = 0.0339978 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.2};
		};
		class god_btn: RscButton
		{
			idc = 1610;
			text = "God Mode"; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.516999 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class bullets_trace_btn: RscButton
		{
			idc = 1611;
			text = "Bullets trace"; //--- ToDo: Localize;
			x = 0.579696 * safezoneW + safezoneX;
			y = 0.516999 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class armory_btn: RscButton
		{
			idc = 1612;
			text = "Armory"; //--- ToDo: Localize;
			x = 0.707211 * safezoneW + safezoneX;
			y = 0.516999 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class vehicle_god_btn: RscButton
		{
			idc = 1613;
			text = "Vehicle God Mode"; //--- ToDo: Localize;
			x = 0.452182 * safezoneW + safezoneX;
			y = 0.584994 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class camera_btn: RscButton
		{
			idc = 1614;
			text = "Free Camera"; //--- ToDo: Localize;
			x = 0.579696 * safezoneW + safezoneX;
			y = 0.584994 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class map_teleport_btn: RscButton
		{
			idc = 1615;
			text = "Map Teleport"; //--- ToDo: Localize;
			x = 0.707211 * safezoneW + safezoneX;
			y = 0.584994 * safezoneH + safezoneY;
			w = 0.103605 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};