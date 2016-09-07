#include "defines.hpp"
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by nathalie, v1.063, #Renujo)
////////////////////////////////////////////////////////
class ac_spectate_menu {
	idd = 1234565;
	class controls {
		class spectate_off_btn: RscButton
		{
			idc = 1600;
			text = "Spectate off"; //--- ToDo: Localize;
			x = 0.00588264 * safezoneW + safezoneX;
			y = 0.635991 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.0339978 * safezoneH;
		};
		class spectate_list: RscListbox
		{
			idc = 1500;
			x = 0.00588264 * safezoneW + safezoneX;
			y = 0.0750274 * safezoneH + safezoneY;
			w = 0.159393 * safezoneW;
			h = 0.543965 * safezoneH;
		};
	};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
