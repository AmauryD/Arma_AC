#include "defines.hpp"

class ac_config_menu {
	idd = 12341;
	movingEnable = true;
	enableSimulation = true;

	class controls {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Refixa)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;

			x = 0.0298438 * safezoneW + safezoneX;
			y = 0.024 * safezoneH + safezoneY;
			w = 0.940313 * safezoneW;
			h = 0.8194 * safezoneH;
		};
		class Title_main: RscText
		{
			idc = 1000;

			text = "ARMA_AC Anti Cheat Config File Maker"; //--- ToDo: Localize;
			x = 0.0298438 * safezoneW + safezoneX;
			y = 0.0301111 * safezoneH + safezoneY;
			w = 0.605625 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class enable_ac_check: RscCheckbox
		{
			idc = 2800;

			x = 0.0457813 * safezoneW + safezoneX;
			y = 0.092 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class enable_ac_text: RscText
		{
			idc = 1003;

			text = "Enable AC"; //--- ToDo: Localize;
			x = 0.0617188 * safezoneW + safezoneX;
			y = 0.092 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class enable_debug_check: RscCheckbox
		{
			idc = 2801;

			x = 0.0457813 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class enable_debug_text: RscText
		{
			idc = 1004;

			text = "Debug mode"; //--- ToDo: Localize;
			x = 0.0617188 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class display_check: RscCheckbox
		{
			idc = 2802;

			x = 0.141406 * safezoneW + safezoneX;
			y = 0.092 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class vehicles_check_text: RscText
		{
			idc = 1005;

			text = "Check vehicles"; //--- ToDo: Localize;
			x = 0.157344 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class holders_check: RscCheckbox
		{
			idc = 2804;

			x = 0.0457813 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class variables_check: RscCheckbox
		{
			idc = 2805;

			x = 0.141406 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class holders_check_text: RscText
		{
			idc = 1007;

			text = "Check containers"; //--- ToDo: Localize;
			x = 0.0617188 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class variables_check_text: RscText
		{
			idc = 1008;

			text = "Check variables"; //--- ToDo: Localize;
			x = 0.157344 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class files_check: RscCheckbox
		{
			idc = 2806;

			x = 0.0457813 * safezoneW + safezoneX;
			y = 0.194 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class scripts_check: RscCheckbox
		{
			idc = 2810;

			x = 0.141406 * safezoneW + safezoneX;
			y = 0.194 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class scripts_check_text: RscText
		{
			idc = 1020;

			text = "Check scripts"; //--- ToDo: Localize;
			x = 0.157344 * safezoneW + safezoneX;
			y = 0.194 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class tp_check: RscCheckbox
		{
			idc = 2811;

			x = 0.237031 * safezoneW + safezoneX;
			y = 0.194 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class tp_check_text: RscText
		{
			idc = 1021;

			text = "Check teleport"; //--- ToDo: Localize;
			x = 0.252969 * safezoneW + safezoneX;
			y = 0.194 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class chat_check: RscCheckbox
		{
			idc = 2807;

			x = 0.237031 * safezoneW + safezoneX;
			y = 0.092 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class files_check_text: RscText
		{
			idc = 1009;

			text = "Check hack files"; //--- ToDo: Localize;
			x = 0.0617188 * safezoneW + safezoneX;
			y = 0.194 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class check_chat_text: RscText
		{
			idc = 1010;

			text = "Filter chat"; //--- ToDo: Localize;
			x = 0.252969 * safezoneW + safezoneX;
			y = 0.092 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class display_check_text: RscText
		{
			idc = 1001;

			text = "Check displays"; //--- ToDo: Localize;
			x = 0.157344 * safezoneW + safezoneX;
			y = 0.092 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1011: RscText
		{
			idc = 1011;

			text = "Admins"; //--- ToDo: Localize;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.041 * safezoneH + safezoneY;
			w = 0.0796875 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class bad_files_list: RscListbox
		{
			idc = 1501;

			x = 0.595625 * safezoneW + safezoneX;
			y = 0.075 * safezoneH + safezoneY;
			w = 0.119531 * safezoneW;
			h = 0.136 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1012: RscText
		{
			idc = 1012;

			text = "Bad files list"; //--- ToDo: Localize;
			x = 0.595625 * safezoneW + safezoneX;
			y = 0.041 * safezoneH + safezoneY;
			w = 0.1275 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class add_bad_file_button: RscButton
		{
			idc = 1601;

			text = "Add file"; //--- ToDo: Localize;
			x = 0.595625 * safezoneW + safezoneX;
			y = 0.228 * safezoneH + safezoneY;
			w = 0.0557812 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1014: RscText
		{
			idc = 1014;

			text = "Allowed weapons list"; //--- ToDo: Localize;
			x = 0.252969 * safezoneW + safezoneX;
			y = 0.279 * safezoneH + safezoneY;
			w = 0.1275 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class weapons_combo: RscCombo
		{
			idc = 2100;

			x = 0.380469 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.095625 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class add_weapon_button: RscButton
		{
			idc = 1602;

			text = "Add weapon"; //--- ToDo: Localize;
			x = 0.380469 * safezoneW + safezoneX;
			y = 0.364 * safezoneH + safezoneY;
			w = 0.095625 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1015: RscText
		{
			idc = 1015;

			text = "Allowed vehicles list"; //--- ToDo: Localize;
			x = 0.0378125 * safezoneW + safezoneX;
			y = 0.279 * safezoneH + safezoneY;
			w = 0.095625 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class players_admin_combo: RscCombo
		{
			idc = 2101;

			x = 0.5 * safezoneW + safezoneX;
			y = 0.075 * safezoneH + safezoneY;
			w = 0.0796875 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.5 * GUI_GRID_H;
		};
		class add_admin_combo_button: RscButton
		{
			idc = 1617;

			text = "Add admin in player list"; //--- ToDo: Localize;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.0796875 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class allowed_vehicles_list: RscListbox
		{
			idc = 1503;

			x = 0.0378125 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.095625 * safezoneW;
			h = 0.51 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class add_vehicle_button: RscButton
		{
			idc = 1604;

			text = "Add vehicle"; //--- ToDo: Localize;
			x = 0.141406 * safezoneW + safezoneX;
			y = 0.364 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class vehicles_comboBox: RscCombo
		{
			idc = 2102;

			x = 0.141406 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class allowed_weapons_list: RscListbox
		{
			idc = 1500;

			x = 0.252969 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.119531 * safezoneW;
			h = 0.51 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class admins_list: RscListbox
		{
			idc = 1502;

			x = 0.412344 * safezoneW + safezoneX;
			y = 0.075 * safezoneH + safezoneY;
			w = 0.0796875 * safezoneW;
			h = 0.136 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class allowed_variables_list_combo: RscListbox
		{
			idc = 1504;

			x = 0.675313 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.143438 * safezoneW;
			h = 0.51 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1016: RscText
		{
			idc = 1016;

			text = "Allowed variables list"; //--- ToDo: Localize;
			x = 0.675313 * safezoneW + safezoneX;
			y = 0.279 * safezoneH + safezoneY;
			w = 0.151406 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class add_variable_combo_button: RscButton
		{
			idc = 1605;

			text = "Add selected variable"; //--- ToDo: Localize;
			x = 0.826719 * safezoneW + safezoneX;
			y = 0.398 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class variables_list: RscCombo
		{
			idc = 2103;

			x = 0.826719 * safezoneW + safezoneX;
			y = 0.347 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class add_all_variables_button: RscButton
		{
			idc = 1606;

			text = "Add all variables"; //--- ToDo: Localize;
			x = 0.826719 * safezoneW + safezoneX;
			y = 0.449 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.034 * safezoneH;
			tooltip = "Add all variables in the list above"; //--- ToDo: Localize;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class variables_clear_button: RscButton
		{
			idc = 1607;

			text = "Clear all variables"; //--- ToDo: Localize;
			x = 0.826719 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class variable_add_edit_button: RscButton
		{
			idc = 1608;

			text = "Add variable"; //--- ToDo: Localize;
			x = 0.826719 * safezoneW + safezoneX;
			y = 0.585 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class remove_variable_button: RscButton
		{
			idc = 1609;

			text = "Remove variable"; //--- ToDo: Localize;
			x = 0.826719 * safezoneW + safezoneX;
			y = 0.636 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RweaposcText_1013: RscText
		{
			idc = 1013;

			text = "In combo box"; //--- ToDo: Localize;
			x = 0.826719 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.017 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.4};
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1017: RscText
		{
			idc = 1017;

			text = "In text input"; //--- ToDo: Localize;
			x = 0.826719 * safezoneW + safezoneX;
			y = 0.551 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.017 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.4};
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class remove_bad_files_button: RscButton
		{
			idc = 1610;

			text = "Clear"; //--- ToDo: Localize;
			x = 0.659375 * safezoneW + safezoneX;
			y = 0.228 * safezoneH + safezoneY;
			w = 0.0557812 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class remove_vehicles_button: RscButton
		{
			idc = 1611;

			text = "remove all"; //--- ToDo: Localize;
			x = 0.141406 * safezoneW + safezoneX;
			y = 0.415 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class remove_weapons_button: RscButton
		{
			idc = 1612;

			text = "remove all"; //--- ToDo: Localize;
			x = 0.380469 * safezoneW + safezoneX;
			y = 0.415 * safezoneH + safezoneY;
			w = 0.095625 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1018: RscText
		{
			idc = 1018;

			text = "Allowed displays list"; //--- ToDo: Localize;
			x = 0.492031 * safezoneW + safezoneX;
			y = 0.279 * safezoneH + safezoneY;
			w = 0.151406 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class allowed_displays_list: RscListbox
		{
			idc = 1505;

			x = 0.499999 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.143438 * safezoneW;
			h = 0.204 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_10178: RscText
		{
			idc = 1019;

			text = "All displays"; //--- ToDo: Localize;
			x = 0.499999 * safezoneW + safezoneX;
			y = 0.585 * safezoneH + safezoneY;
			w = 0.143438 * safezoneW;
			h = 0.017 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.4};
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class current_displays_list: RscListbox
		{
			idc = 1506;

			x = 0.499999 * safezoneW + safezoneX;
			y = 0.619 * safezoneH + safezoneY;
			w = 0.143438 * safezoneW;
			h = 0.204 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class vehicles_check: RscCheckbox
		{
			idc = 2802;

			x = 0.141406 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1010;

			text = "-IP filter"; //--- ToDo: Localize;
			x = 0.252969 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1019: RscText
		{
			idc = 1010;

			text = "-URL filter"; //--- ToDo: Localize;
			x = 0.252969 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class ip_filter_check: RscCheckbox
		{
			idc = 2808;

			x = 0.237031 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class url_filter_check: RscCheckbox
		{
			idc = 2809;

			x = 0.237031 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.00796875 * safezoneW;
			h = 0.017 * safezoneH;
		};
		class add_display_button: RscButton
		{
			idc = 1619;

			text = "Add display"; //--- ToDo: Localize;
			x = 0.499999 * safezoneW + safezoneX;
			y = 0.534 * safezoneH + safezoneY;
			w = 0.143438 * safezoneW;
			h = 0.034 * safezoneH;
			tooltip = "only display id"; //--- ToDo: Localize;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class bad_words_list: RscListbox
		{
			idc = 1518;

			x = 0.324688 * safezoneW + safezoneX;
			y = 0.075 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.136 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class RscText_1020: RscText
		{
			idc = 1011;

			text = "Bad words"; //--- ToDo: Localize;
			x = 0.324688 * safezoneW + safezoneX;
			y = 0.041 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class add_admin_input_button: RscButton
		{
			idc = 1603;

			text = "Add admin manually"; //--- ToDo: Localize;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.228 * safezoneH + safezoneY;
			w = 0.0796875 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class add_bad_word_btn: RscButton
		{
			idc = 1616;

			text = "Add a bad word "; //--- ToDo: Localize;
			x = 0.324688 * safezoneW + safezoneX;
			y = 0.228 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class output_config: RscButton
		{
			idc = 1621;
			text = "Output your config"; //--- ToDo: Localize;
			x = 0.81875 * safezoneW + safezoneX;
			y = 0.857 * safezoneH + safezoneY;
			w = 0.151406 * safezoneW;
			h = 0.051 * safezoneH;
		};
		class load_from_config_file: RscButton
		{
			idc = 1620;
			text = "Load from your current config file"; //--- ToDo: Localize;
			x = 0.81875 * safezoneW + safezoneX;
			y = 0.925 * safezoneH + safezoneY;
			w = 0.151406 * safezoneW;
			h = 0.051 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class ac_logs: RscListbox
		{
			idc = 1507;
			x = 0.0298438 * safezoneW + safezoneX;
			y = 0.857 * safezoneH + safezoneY;
			w = 0.780937 * safezoneW;
			h = 0.119 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class allowed_tags_list: RscListbox
		{
			idc = 1508;
			x = 0.739062 * safezoneW + safezoneX;
			y = 0.075 * safezoneH + safezoneY;
			w = 0.06375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class RscText_1021: RscText
		{
			idc = 1012;

			text = "Allowed tags"; //--- ToDo: Localize;
			x = 0.731094 * safezoneW + safezoneX;
			y = 0.041 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class RscText_1022: RscText
		{
			idc = 1012;

			text = "forbidden tags"; //--- ToDo: Localize;
			x = 0.802813 * safezoneW + safezoneX;
			y = 0.041 * safezoneH + safezoneY;
			w = 0.0717188 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class forbidden_tags_list: RscListbox
		{
			idc = 1509;
			x = 0.810781 * safezoneW + safezoneX;
			y = 0.075 * safezoneH + safezoneY;
			w = 0.06375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class forbidden_variables_list: RscListbox
		{
			idc = 1510;
			x = 0.8825 * safezoneW + safezoneX;
			y = 0.075 * safezoneH + safezoneY;
			w = 0.06375 * safezoneW;
			h = 0.136 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class RscText_1023: RscText
		{
			idc = 1012;

			text = "forbidden variables"; //--- ToDo: Localize;
			x = 0.874531 * safezoneW + safezoneX;
			y = 0.041 * safezoneH + safezoneY;
			w = 0.103594 * safezoneW;
			h = 0.017 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class add_allowed_tag_btn: RscButton
		{
			idc = 1613;

			text = "Add allowed tag"; //--- ToDo: Localize;
			x = 0.739062 * safezoneW + safezoneX;
			y = 0.228 * safezoneH + safezoneY;
			w = 0.06375 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class add_forbidden_tag_btn: RscButton
		{
			idc = 1614;

			text = "Add forbidden tag"; //--- ToDo: Localize;
			x = 0.810781 * safezoneW + safezoneX;
			y = 0.228 * safezoneH + safezoneY;
			w = 0.06375 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		class add_forbidden_var_btn: RscButton
		{
			idc = 1618;

			text = "Add forbidden var"; //--- ToDo: Localize;
			x = 0.8825 * safezoneW + safezoneX;
			y = 0.228 * safezoneH + safezoneY;
			w = 0.06375 * safezoneW;
			h = 0.034 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};