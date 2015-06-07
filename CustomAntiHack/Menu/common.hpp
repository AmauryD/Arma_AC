// inspired by many uis , mainly by the altis life

#define CT_STATIC 0
#define CT_BUTTON 1
#define CT_EDIT 2
#define CT_SLIDER 3
#define CT_COMBO 4
#define CT_LISTBOX 5
#define CT_TOOLBOX 6
#define CT_CHECKBOXES 7
#define CT_PROGRESS 8
#define CT_HTML 9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT 11
#define CT_TREE 12
#define CT_STRUCTURED_TEXT 13
#define CT_CONTEXT_MENU 14
#define CT_CONTROLS_GROUP 15
#define CT_SHORTCUTBUTTON 16
#define CT_XKEYDESC 40
#define CT_XBUTTON          41
#define CT_XLISTBOX 42
#define CT_XSLIDER 43
#define CT_XCOMBO 44
#define CT_ANIMATED_TEXTURE 45
#define CT_CHECKBOX         77 //Arma 3
#define CT_OBJECT 80
#define CT_OBJECT_ZOOM 81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK 98
#define CT_ANIMATED_USER 99
#define CT_MAP              100
#define CT_MAP_MAIN 101
#define CT_LISTNBOX 102
#define CT_ITEMSLOT         103

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c

#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144 //tileH and tileW params required for tiled image
#define ST_WITH_RECT      160
#define ST_LINE           176

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200 // this style works for CT_STATIC in conjunction with ST_MULTI
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           1024

#define SL_TEXTURES       0x10

// progress bar 
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

#define FontM             "PuristaMedium" // The standard font in Arma 3 is "PuristaMedium"

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4

#define GUI_GRID_CENTER_WAbs		((safezoneW / safezoneH) min 1.2)
#define GUI_GRID_CENTER_HAbs		(GUI_GRID_CENTER_WAbs / 1.2)
#define GUI_GRID_CENTER_W		(GUI_GRID_CENTER_WAbs / 40)
#define GUI_GRID_CENTER_H		(GUI_GRID_CENTER_HAbs / 25)
#define GUI_GRID_CENTER_X		(safezoneX + (safezoneW - GUI_GRID_CENTER_WAbs)/2)
#define GUI_GRID_CENTER_Y		(safezoneY + (safezoneH - GUI_GRID_CENTER_HAbs)/2)

class ac_RscScrollBar
{
	color[] = {1,1,1,0.6};
	colorActive[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.3};
	thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	shadow = 0;
	scrollSpeed = 0.06;
	width = 0;
	height = 0;
	autoScrollEnabled = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};

class ac_RscEdit {
	type = CT_EDIT;
	style = 0x00 + 0x40;
	font = FontM;
	shadow = 2;
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorBackground[] = {0, 0, 0, 1};
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	colorText[] = {0.95, 0.95, 0.95, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	autocomplete = false;
	colorSelection[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 1};
	canModify = 1;
};

class ac_Checkbox
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = -1; // Control identification (without it, the control won't be displayed)
	type = CT_CHECKBOX; // Type
	style = ST_LEFT + ST_MULTI; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 0;
	y = 0;
	w = 1 * GUI_GRID_CENTER_W; // Width
	h = 1 * GUI_GRID_CENTER_H; // Height

	//Colors
	color[] = { 1, 1, 1, 0.7 }; // Texture color
	colorFocused[] = { 1, 1, 1, 1 }; // Focused texture color
	colorHover[] = { 1, 1, 1, 1 }; // Mouse over texture color
	colorPressed[] = { 1, 1, 1, 1 }; // Mouse pressed texture color
	colorDisabled[] = { 1, 1, 1, 0.2 }; // Disabled texture color

	//Background colors
	colorBackground[] = { 0, 0, 0, 0 }; // Fill color
	colorBackgroundFocused[] = { 0, 0, 0, 0 }; // Focused fill color
	colorBackgroundHover[] = { 0, 0, 0, 0 }; // Mouse hover fill color
	colorBackgroundPressed[] = { 0, 0, 0, 0 }; // Mouse pressed fill color
	colorBackgroundDisabled[] = { 0, 0, 0, 0 }; // Disabled fill color

	//Textures
	textureChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";		//Texture of checked CheckBox.
	textureUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";		//Texture of unchecked CheckBox.
	textureFocusedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";	//Texture of checked focused CheckBox (Could be used for showing different texture when focused).
	textureFocusedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";	//Texture of unchecked focused CheckBox.
	textureHoverChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureHoverUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	texturePressedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	texturePressedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureDisabledChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureDisabledUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = { 0, 0, 0, 1 }; // Tooltip background color
	tooltipColorText[] = { 1, 1, 1, 1 }; // Tooltip text color
	tooltipColorBox[] = { 1, 1, 1, 1 }; // Tooltip frame color

	//Sounds
	soundClick[] = { "\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1 }; // Sound played after control is activated in format {file, volume, pitch}
	soundEnter[] = { "\A3\ui_f\data\sound\RscButton\soundEnter", 0.09, 1 }; // Sound played when mouse cursor enters the control
	soundPush[] = { "\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1 }; // Sound played when the control is pushed down
	soundEscape[] = { "\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1 }; // Sound played when the control is released after pushing down

};

class ac_RscText {
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	type = CT_STATIC;
	style = 0;
	shadow = 1;
	colorShadow[] = {0, 0, 0, 0.5};
	font = FontM;
	SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	colorText[] = {1, 1, 1, 1.0};
	colorBackground[] = {0, 0, 0, 0};
	linespacing = 1;
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
};

class ac_RscTitle : ac_RscText {
	style = 0;
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = {0.95, 0.95, 0.95, 1};
};

class ac_RscStructuredText {
	type = CT_STRUCTURED_TEXT;
	style = 0;
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = {1, 1, 1, 1.0};
	shadow = 1;
	
	class Attributes {
		font = "PuristaMedium";
		color = "#ffffff";
		align = "left";
		shadow = 1;
	};
};

class ac_ConsoleEdit: ac_RscEdit { 
    idc = 90002; 
    x = 0.03; 
    y = 0.12; 
    w = 0.4; 
    h = 0.2; 
    style = 16; 
    text = ""; 
    autocomplete = "scripting"; 
    font = "EtelkaMonospaceProBold"; 
    lineSpacing = 1; 
    sizeEx = 0.03; 
    shadow = 2; 
    colorBackground[] = {0, 0, 0, 1}; 
    colorText[] = {0.95, 0.95, 0.95, 1}; 
    colorSelection[] = {0.8784, 0.8471, 0.651, 1.0}; 
};  

class ac_RscShortcutButton {
	idc = -1;
	style = 0;
	default = 0;
	shadow = 1;
	w = 0.183825;
	h = "(		(		((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	color[] = {1,1,1,1.0};
	colorFocused[] = {1,1,1,1.0};
	color2[] = {0.95,0.95,0.95,1};
	colorDisabled[] = {1,1,1,0.25};
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackgroundFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackground2[] = {1,1,1,1};
	colorBackgroundDisabled[] = {1,1,1,0.25};
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorShadow[] = {0,0,0,1};
	colorBorder[] = {0,0,0,1};
	borderSize = 0.0;
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus = 1.2;
	periodOver = 0.8;
	class HitZone
	{
		left = 0.0;
		top = 0.0;
		right = 0.0;
		bottom = 0.0;
	};
	class ShortcutPos
	{
		left = 0;
		top = "(			(		(		((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos
	{
		left = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top = "(			(		(		((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0.0;
	};
	period = 0.4;
	font = FontM;
	size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
	soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
	soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
	soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
	action = "";
	class Attributes
	{
		font = FontM;
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	class AttributesImage
	{
		font = FontM;
		color = "#E5E5E5";
		align = "left";
	};
};

class ac_RscButtonMenu : ac_RscShortcutButton {
	idc = -1;
	type = CT_BUTTON;
	style = "0x02 + 0xC0";
	default = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[] = {0,0,0,0.8};
	colorBackgroundFocused[] = {1,1,1,1};
	colorBackground2[] = {0.75,0.75,0.75,1};
	color[] = {1,1,1,1};
	colorFocused[] = {0,0,0,1};
	color2[] = {0,0,0,1};
	colorText[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.25};
	period = 1.2;
	periodFocus = 1.2;
	periodOver = 1.2;
	size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	class TextPos
	{
		left = "0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0.0;
	};
	class Attributes
	{
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class ShortcutPos
	{
		left = "(6.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) - 0.0225 - 0.005";
		top = 0.005;
		w = 0.0225;
		h = 0.03;
	};
	soundEnter[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
	soundPush[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1};
	soundClick[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
	soundEscape[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
	textureNoShortcut = "";
};

class ac_RscListBox 
{
	style = 16;
	idc = -1;
	type = CT_LISTBOX;
	w = 0.275;
	h = 0.04;
	font = FontM;
	colorSelect[] = {1, 1, 1, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0.28,0.28,0.28,0.28};
	colorSelect2[] = {1, 1, 1, 1};
	colorSelectBackground[] = {0.95, 0.95, 0.95, 0.5};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	colorScrollbar[] = {0.2, 0.2, 0.2, 1};
	colorPicture[] = {1,1,1,1};
	colorPictureSelected[] = {1,1,1,1};
	colorPictureDisabled[] = {1,1,1,1};
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	wholeHeight = 0.45;
	rowHeight = 0.04;
	color[] = {0.7, 0.7, 0.7, 1};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	sizeEx = 0.023;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	class ListScrollBar: ac_RscScrollBar
	{
		color[] = {1,1,1,1};
		autoScrollEnabled = 1;
	};
};

class ac_RscCombo {
	style = 16;
	type = CT_COMBO;
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	shadow = 0;
	colorSelect[] = {0, 0, 0, 1};
	soundExpand[] = {"",0.1,1};
	colorText[] = {0.95, 0.95, 0.95, 1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	colorBackground[] = {0.4,0.4,0.4,0.4};
	colorSelectBackground[] = {1, 1, 1, 0.7};
	colow_Rscrollbar[] = {1, 0, 0, 1};
	soundSelect[] = {
			"", 0.000000, 1
	};
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	wholeHeight = 0.45;
	color[] = {1, 1, 1, 1};
	colorActive[] = {1, 0, 0, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	font = FontM;
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	
	class ComboScrollBar : ac_RscScrollBar {};
};