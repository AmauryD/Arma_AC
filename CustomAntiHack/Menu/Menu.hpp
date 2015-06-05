class ac_menu {

	idd = 12340;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {

		class life_RscTitleBackground:life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.9;
			h = (1 / 25);
		};
		
		class MainBackground:life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.9;
			h = 0.7 - (22 / 250);
		};
		
		class Title : life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "<3 AntiCheat Menu Altis life <3";
			x = 0.1;
			y = 0.2;
			w = 0.9;
			h = (1 / 25);
		};
	};
	
	class controls {

		class Mode : Life_RscCombo 
		{
			idc = 12343;

			x = 0.5;
			y = 0.2;
			w = 0.3;
			h = (1 / 25);
		};

		class logs : life_RscListBox 
		{
			idc = 12342;
			sizeEx = 0.030;

			x = 0.1; y = 0.35;
			w = 0.9; h = 0.30;
		};

		class moreInfos : Life_RscStructuredText
		{
			idc = 12344;
			sizeEx = 0.020;
			text = "";
			x = 0.11;
			y = 0.67;
			w = 0.8; h = 0.2;
		};

		class filterLogs : Life_Checkbox
		{
			idc = 12345;
			x = 0.1;
			y = 0.25;
			w = 0.05; 
			h = 0.05;
		};

		class filterDesc : Life_RscStructuredText
		{
			idc = 12346;
			sizeEx = 0.015;
			text = "Ne pas me montrer les risques faibles.";
			x = 0.16;
			y = 0.25;
			w = 0.5; h = 0.1;
		};

		class allowMessageShow : Life_Checkbox
		{
			idc = 12351;
			x = 0.1;
			y = 0.32;
			w = 0.05; 
			h = 0.05;
		};

		class allowMessageShowDesc : Life_RscStructuredText
		{
			idc = 12352;
			sizeEx = 0.015;
			text = "Ne plus afficher les messages sur mon écran.";
			x = 0.16;
			y = 0.32;
			w = 0.5; h = 0.1;
		};
		
		class pList : life_RscListBox 
		{
			idc = 12341;
			sizeEx = 0.030;

			x = 0.1; y = 0.30;
			w = 0.4; h = 0.45;
		};

		class Options : life_RscListBox 
		{
			idc = 12347;
			sizeEx = 0.030;

			x = 0.59; y = 0.30;
			w = 0.35; h = 0.45;
		};

		class consoleText : ConsoleEdit
		{
		  idc = 12348;
		  text = "";
		  x = 0.15; y = 0.28;
		  w = 0.75; h = 0.2;
		};

		class executedList : life_RscListBox 
		{
			idc = 12350;
			sizeEx = 0.030;

			x = 0.15; y = 0.60;
			w = 0.75; h = 0.25;
		};

		class consoleExec : Life_RscButtonMenu
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


