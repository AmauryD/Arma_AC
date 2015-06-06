#include "common.hpp"

class ac_menu {

	idd = 12340;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {

		class ac_RscTitleBackground:ac_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.9;
			h = (1 / 25);
		};
		
		class MainBackground:ac_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.9;
			h = 0.7 - (22 / 250);
		};
		
		class Title : ac_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "AntiCheat Menu";
			x = 0.1;
			y = 0.2;
			w = 0.9;
			h = (1 / 25);
		};
	};
	
	class controls {

		class Mode : ac_RscCombo 
		{
			idc = 12343;

			x = 0.5;
			y = 0.2;
			w = 0.3;
			h = (1 / 25);
		};

		class logs : ac_RscListBox 
		{
			idc = 12342;
			sizeEx = 0.030;

			x = 0.1; y = 0.35;
			w = 0.9; h = 0.30;
		};

		class moreInfos : ac_RscStructuredText
		{
			idc = 12344;
			sizeEx = 0.020;
			text = "";
			x = 0.11;
			y = 0.67;
			w = 0.8; h = 0.2;
		};

		class filterLogs : ac_Checkbox
		{
			idc = 12345;
			x = 0.1;
			y = 0.25;
			w = 0.05; 
			h = 0.05;
		};

		class filterDesc : ac_RscStructuredText
		{
			idc = 12346;
			sizeEx = 0.015;
			text = "Ne pas me montrer les risques faibles.";
			x = 0.16;
			y = 0.25;
			w = 0.5; h = 0.1;
		};

		class allowMessageShow : ac_Checkbox
		{
			idc = 12351;
			x = 0.1;
			y = 0.32;
			w = 0.05; 
			h = 0.05;
		};

		class allowMessageShowDesc : ac_RscStructuredText
		{
			idc = 12352;
			sizeEx = 0.015;
			text = "Ne plus afficher les messages sur mon écran.";
			x = 0.16;
			y = 0.32;
			w = 0.5; h = 0.1;
		};
		
		class pList : ac_RscListBox 
		{
			idc = 12341;
			sizeEx = 0.030;

			x = 0.1; y = 0.30;
			w = 0.4; h = 0.45;
		};

		class Options : ac_RscListBox 
		{
			idc = 12347;
			sizeEx = 0.030;

			x = 0.59; y = 0.30;
			w = 0.35; h = 0.45;
		};

		class consoleText : ac_ConsoleEdit
		{
		  idc = 12348;
		  text = "";
		  x = 0.15; y = 0.28;
		  w = 0.75; h = 0.2;
		};

		class executedList : ac_RscListBox 
		{
			idc = 12350;
			sizeEx = 0.030;

			x = 0.15; y = 0.60;
			w = 0.75; h = 0.25;
		};

		class consoleExec : ac_RscButtonMenu
		{
			idc = 12349;
			text = "exec";
			onButtonClick = "[] call ac_fnc_consoleExec";
			x = 0 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.55 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};


