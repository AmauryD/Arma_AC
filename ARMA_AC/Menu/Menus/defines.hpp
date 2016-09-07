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



///////////////////////////////////////////////////////////////////////////
/// GUI
///////////////////////////////////////////////////////////////////////////

//--- Hack to avoid too large display upon first startup (fixed in engine)
//#define GUI_GRID_OLD_WAbs		((safezoneW / ((floor (safezoneW / safezoneH)) max 1)) min 1.2)

//--- New grid for new A3 displays
#define GUI_GRID_WAbs			((safezoneW / safezoneH) min 1.2)
#define GUI_GRID_HAbs			(GUI_GRID_WAbs / 1.2)
#define GUI_GRID_W			(GUI_GRID_WAbs / 40)
#define GUI_GRID_H			(GUI_GRID_HAbs / 25)
#define GUI_GRID_X			(safezoneX)
#define GUI_GRID_Y			(safezoneY + safezoneH - GUI_GRID_HAbs)

//--- MUF - Test grid used in MP
#define GUI_GRID_MP_WAbs	GUI_GRID_WAbs
#define GUI_GRID_MP_HAbs	GUI_GRID_HAbs
#define GUI_GRID_MP_W		GUI_GRID_W
#define GUI_GRID_MP_H		GUI_GRID_H
#define GUI_GRID_MP_X		(SafezoneX)
#define GUI_GRID_MP_Y		(safezoneY)

//--- Screen Center
#define GUI_GRID_CENTER_WAbs		GUI_GRID_WAbs
#define GUI_GRID_CENTER_HAbs		GUI_GRID_HAbs
#define GUI_GRID_CENTER_W		GUI_GRID_W
#define GUI_GRID_CENTER_H		GUI_GRID_H
#define GUI_GRID_CENTER_X		(safezoneX + (safezoneW - GUI_GRID_CENTER_WAbs)/2)
#define GUI_GRID_CENTER_Y		(safezoneY + (safezoneH - GUI_GRID_CENTER_HAbs)/2)

//--- Bottom center position (used by Revive UI)
#define GUI_GRID_CENTER_BOTTOM_WAbs		GUI_GRID_WAbs
#define GUI_GRID_CENTER_BOTTOM_HAbs		GUI_GRID_HAbs
#define GUI_GRID_CENTER_BOTTOM_W		GUI_GRID_W
#define GUI_GRID_CENTER_BOTTOM_H		GUI_GRID_H
#define GUI_GRID_CENTER_BOTTOM_X		(safezoneX + (safezoneW - GUI_GRID_CENTER_WAbs)/2)
#define GUI_GRID_CENTER_BOTTOM_Y		(safezoneY + safezoneH - GUI_GRID_CENTER_HAbs)

//--- Screen Top Center
#define GUI_GRID_TOPCENTER_WAbs		GUI_GRID_WAbs
#define GUI_GRID_TOPCENTER_HAbs		GUI_GRID_HAbs
#define GUI_GRID_TOPCENTER_W		GUI_GRID_W
#define GUI_GRID_TOPCENTER_H		GUI_GRID_H
#define GUI_GRID_TOPCENTER_X		GUI_GRID_CENTER_X
#define GUI_GRID_TOPCENTER_Y		safezoneY

//--- Screen Bottom Center
#define GUI_GRID_BOTTOMCENTER_WAbs	GUI_GRID_WAbs
#define GUI_GRID_BOTTOMCENTER_HAbs	GUI_GRID_HAbs
#define GUI_GRID_BOTTOMCENTER_W		GUI_GRID_W
#define GUI_GRID_BOTTOMCENTER_H		GUI_GRID_H
#define GUI_GRID_BOTTOMCENTER_X		GUI_GRID_CENTER_X
#define GUI_GRID_BOTTOMCENTER_Y		GUI_GRID_Y

//--- 2D Editor - TEST A3
#define GUI_GRID_EDITOR_WAbs		GUI_GRID_CENTER_WAbs
#define GUI_GRID_EDITOR_HAbs		GUI_GRID_CENTER_HAbs
#define GUI_GRID_EDITOR_W		GUI_GRID_CENTER_W
#define GUI_GRID_EDITOR_H		GUI_GRID_CENTER_H
#define GUI_GRID_EDITOR_X		(safezoneX)
#define GUI_GRID_EDITOR_Y		(safezoneY)

//--- Diary
#define GUI_GRID_DIARY_WAbs		GUI_GRID_WAbs
#define GUI_GRID_DIARY_HAbs		GUI_GRID_HAbs
#define GUI_GRID_DIARY_W		GUI_GRID_W
#define GUI_GRID_DIARY_H		GUI_GRID_H
#define GUI_GRID_DIARY_X		(safezoneX)
#define GUI_GRID_DIARY_Y		(safezoneY)

//--- Top left
#define GUI_GRID_TOPLEFT_WAbs		GUI_GRID_WAbs
#define GUI_GRID_TOPLEFT_HAbs		GUI_GRID_HAbs
#define GUI_GRID_TOPLEFT_W		GUI_GRID_W
#define GUI_GRID_TOPLEFT_H		GUI_GRID_H
#define GUI_GRID_TOPLEFT_X		(safezoneX)
#define GUI_GRID_TOPLEFT_Y		(safezoneY)


///////////////////////////////////////////////////////////////////////////
/// iGUI
///////////////////////////////////////////////////////////////////////////

//--- IGUI Vehicle
#define IGUI_GRID_VEHICLE_WAbs		(10 * GUI_GRID_W)
#define IGUI_GRID_VEHICLE_HAbs		(4.5 * GUI_GRID_H)
#define IGUI_GRID_VEHICLE_XDef		(safezoneX + 0.5 * GUI_GRID_W)
#define IGUI_GRID_VEHICLE_YDef		(safezoneY + 0.5 * GUI_GRID_H)
#define IGUI_GRID_VEHICLE_X		(profilenamespace getvariable ["IGUI_GRID_VEHICLE_X",IGUI_GRID_VEHICLE_XDef])
#define IGUI_GRID_VEHICLE_Y		(profilenamespace getvariable ["IGUI_GRID_VEHICLE_Y",IGUI_GRID_VEHICLE_YDef])
#define IGUI_GRID_VEHICLE_W		GUI_GRID_W
#define IGUI_GRID_VEHICLE_H		GUI_GRID_H

//--- IGUI Radar
#define IGUI_GRID_RADAR_WAbs		(5.6 * GUI_GRID_W)
#define IGUI_GRID_RADAR_HAbs		(5.6 * GUI_GRID_H)
#define IGUI_GRID_RADAR_XDef		(safezoneX + safezoneW / 2 - 2.8 * GUI_GRID_W)
#define IGUI_GRID_RADAR_YDef		(safezoneY + 0.5 * GUI_GRID_H)
#define IGUI_GRID_RADAR_X		(profilenamespace getvariable ["IGUI_GRID_RADAR_X",IGUI_GRID_RADAR_XDef])
#define IGUI_GRID_RADAR_Y		(profilenamespace getvariable ["IGUI_GRID_RADAR_Y",IGUI_GRID_RADAR_YDef])
#define IGUI_GRID_RADAR_W		GUI_GRID_W
#define IGUI_GRID_RADAR_H		GUI_GRID_H

//--- IGUI Weapon
#define IGUI_GRID_WEAPON_WAbs		(10 * GUI_GRID_W)
#define IGUI_GRID_WEAPON_HAbs		(4.5 * GUI_GRID_H)
#define IGUI_GRID_WEAPON_XDef		((safezoneX + safezoneW) - IGUI_GRID_WEAPON_WAbs - 4.3 * GUI_GRID_W)
#define IGUI_GRID_WEAPON_YDef		(safezoneY + 0.5 * GUI_GRID_H)
#define IGUI_GRID_WEAPON_X		(profilenamespace getvariable ["IGUI_GRID_WEAPON_X",IGUI_GRID_WEAPON_XDef])
#define IGUI_GRID_WEAPON_Y		(profilenamespace getvariable ["IGUI_GRID_WEAPON_Y",IGUI_GRID_WEAPON_YDef])
#define IGUI_GRID_WEAPON_W		GUI_GRID_W
#define IGUI_GRID_WEAPON_H		GUI_GRID_H

//--- IGUI Stance indicator
#define IGUI_GRID_STANCE_WAbs		(3.7 * GUI_GRID_W)
#define IGUI_GRID_STANCE_HAbs		(3.7 * GUI_GRID_H)
#define IGUI_GRID_STANCE_XDef		((safezoneX + safezoneW) - IGUI_GRID_STANCE_WAbs - 0.5 * GUI_GRID_W)
#define IGUI_GRID_STANCE_YDef		(safezoneY + 0.5 * GUI_GRID_H)
#define IGUI_GRID_STANCE_X		(profilenamespace getvariable ["IGUI_GRID_STANCE_X",IGUI_GRID_STANCE_XDef])
#define IGUI_GRID_STANCE_Y		(profilenamespace getvariable ["IGUI_GRID_STANCE_Y",IGUI_GRID_STANCE_YDef])
#define IGUI_GRID_STANCE_W		GUI_GRID_W
#define IGUI_GRID_STANCE_H		GUI_GRID_H

//--- IGUI Stamina Bar
#define IGUI_GRID_STAMINA_WAbs		(10 * GUI_GRID_W)
#define IGUI_GRID_STAMINA_HAbs		(1 * GUI_GRID_H)
#define IGUI_GRID_STAMINA_XDef		IGUI_GRID_WEAPON_XDef
#define IGUI_GRID_STAMINA_YDef		(safezoneY + 4.05 * GUI_GRID_H)
#define IGUI_GRID_STAMINA_X		(profilenamespace getvariable ["IGUI_GRID_STAMINA_X",IGUI_GRID_STAMINA_XDef])
#define IGUI_GRID_STAMINA_Y		(profilenamespace getvariable ["IGUI_GRID_STAMINA_Y",IGUI_GRID_STAMINA_YDef])
#define IGUI_GRID_STAMINA_W		GUI_GRID_W
#define IGUI_GRID_STAMINA_H		GUI_GRID_H

//--- IGUI Notification
#define IGUI_GRID_NOTIFICATION_WAbs	(12 * GUI_GRID_W)
#define IGUI_GRID_NOTIFICATION_HAbs	(6 * GUI_GRID_H)
#define IGUI_GRID_NOTIFICATION_XDef	(0.5 - 6 * GUI_GRID_W)
#define IGUI_GRID_NOTIFICATION_YDef	(safezoneY + 6.5 * GUI_GRID_H)
#define IGUI_GRID_NOTIFICATION_X	(profilenamespace getvariable ["IGUI_GRID_NOTIFICATION_X",IGUI_GRID_NOTIFICATION_XDef])
#define IGUI_GRID_NOTIFICATION_Y	(profilenamespace getvariable ["IGUI_GRID_NOTIFICATION_Y",IGUI_GRID_NOTIFICATION_YDef])
#define IGUI_GRID_NOTIFICATION_W	GUI_GRID_W
#define IGUI_GRID_NOTIFICATION_H	GUI_GRID_H

//--- IGUI Action / Command Menu
#define IGUI_GRID_MENU_WAbs		(4.5 * GUI_GRID_W)
#define IGUI_GRID_MENU_HAbs		(13.5 * IGUI_TEXT_SIZE_MEDIUM)
#define IGUI_GRID_MENU_XDef		(1.5 * GUI_GRID_W + safezoneX)
#define IGUI_GRID_MENU_YDef		(5 * GUI_GRID_H + safezoneY)
#define IGUI_GRID_MENU_X		(profilenamespace getvariable ["IGUI_GRID_MENU_X",IGUI_GRID_MENU_XDef])
#define IGUI_GRID_MENU_Y		(profilenamespace getvariable ["IGUI_GRID_MENU_Y",IGUI_GRID_MENU_YDef])
#define IGUI_GRID_MENU_W		GUI_GRID_W
#define IGUI_GRID_MENU_H		GUI_GRID_H

//--- IGUI Communication menu icons
#define IGUI_GRID_COMM_WAbs		(1.5 * GUI_GRID_W)
#define IGUI_GRID_COMM_HAbs		(15 * GUI_GRID_H)
#define IGUI_GRID_COMM_XDef		(0 * GUI_GRID_W + safezoneX)
#define IGUI_GRID_COMM_YDef		(5 * GUI_GRID_H + safezoneY)
#define IGUI_GRID_COMM_X		(profilenamespace getvariable ["IGUI_GRID_COMM_X",IGUI_GRID_COMM_XDef])
#define IGUI_GRID_COMM_Y		(profilenamespace getvariable ["IGUI_GRID_COMM_Y",IGUI_GRID_COMM_YDef])
#define IGUI_GRID_COMM_W		GUI_GRID_W
#define IGUI_GRID_COMM_H		GUI_GRID_H

//--- IGUI Hint
#define IGUI_GRID_HINT_WAbs		(12 * GUI_GRID_W)
#define IGUI_GRID_HINT_HAbs		(8 * GUI_GRID_H)
#define IGUI_GRID_HINT_XDef		((safezoneX + safezoneW) - IGUI_GRID_HINT_WAbs - 1 * GUI_GRID_W)
#define IGUI_GRID_HINT_YDef		(safezoneY + 6 * GUI_GRID_H)
#define IGUI_GRID_HINT_X		(profilenamespace getvariable ["IGUI_GRID_HINT_X",IGUI_GRID_HINT_XDef])
#define IGUI_GRID_HINT_Y		(profilenamespace getvariable ["IGUI_GRID_HINT_Y",IGUI_GRID_HINT_YDef])
#define IGUI_GRID_HINT_W		GUI_GRID_W
#define IGUI_GRID_HINT_H		GUI_GRID_H

//--- IGUI GPS
#define IGUI_GRID_GPS_XDef		(safezoneX + safezoneW - 11 * GUI_GRID_W)
#define IGUI_GRID_GPS_YDef		(safezoneY + safezoneH - 20.5 * GUI_GRID_H)
#define IGUI_GRID_GPS_WDef		(10 * GUI_GRID_W)
#define IGUI_GRID_GPS_HDef		(10 * GUI_GRID_H)
#define IGUI_GRID_GPS_X			(profilenamespace getvariable ['IGUI_GRID_GPS_X',IGUI_GRID_GPS_XDef])
#define IGUI_GRID_GPS_Y			(profilenamespace getvariable ['IGUI_GRID_GPS_Y',IGUI_GRID_GPS_YDef])
#define IGUI_GRID_GPS_WAbs		(profilenamespace getvariable ['IGUI_GRID_GPS_W',IGUI_GRID_GPS_WDef])
#define IGUI_GRID_GPS_HAbs		(profilenamespace getvariable ['IGUI_GRID_GPS_H',IGUI_GRID_GPS_HDef])

//--- IGUI AV Camera
#define IGUI_GRID_AVCAMERA_XDef		(safezoneX + safezoneW - 11.6 * GUI_GRID_W)
#define IGUI_GRID_AVCAMERA_YDef		(safezoneY + safezoneH - 17.2 * GUI_GRID_H)
#define IGUI_GRID_AVCAMERA_WDef		(10.6 * GUI_GRID_W)
#define IGUI_GRID_AVCAMERA_HDef		(6.7 * GUI_GRID_H)
#define IGUI_GRID_AVCAMERA_X		(profilenamespace getvariable ['IGUI_GRID_AVCAMERA_X',IGUI_GRID_AVCAMERA_XDef])
#define IGUI_GRID_AVCAMERA_Y		(profilenamespace getvariable ['IGUI_GRID_AVCAMERA_Y',IGUI_GRID_AVCAMERA_YDef])
#define IGUI_GRID_AVCAMERA_WAbs		(profilenamespace getvariable ['IGUI_GRID_AVCAMERA_W',IGUI_GRID_AVCAMERA_WDef])
#define IGUI_GRID_AVCAMERA_HAbs		(profilenamespace getvariable ['IGUI_GRID_AVCAMERA_H',IGUI_GRID_AVCAMERA_HDef])

//--- IGUI IGUI Chat Log
#define IGUI_GRID_CHAT_XDef		(safezoneX + 1 * GUI_GRID_W)
#define IGUI_GRID_CHAT_YDef		(safezoneY + safezoneH - 10.5 * GUI_GRID_H)
#define IGUI_GRID_CHAT_WDef		(20 * GUI_GRID_W)
#define IGUI_GRID_CHAT_HDef		(5 * GUI_GRID_H)
#define IGUI_GRID_CHAT_X		(profilenamespace getvariable ["IGUI_GRID_CHAT_X",IGUI_GRID_CHAT_XDef])
#define IGUI_GRID_CHAT_Y		(profilenamespace getvariable ["IGUI_GRID_CHAT_Y",IGUI_GRID_CHAT_YDef])
#define IGUI_GRID_CHAT_WAbs		(profilenamespace getvariable ["IGUI_GRID_CHAT_W",IGUI_GRID_CHAT_WDef])
#define IGUI_GRID_CHAT_HAbs		(profilenamespace getvariable ["IGUI_GRID_CHAT_H",IGUI_GRID_CHAT_HDef])

//--- IGUI Command Bar
#define IGUI_GRID_BAR_WAbs		(36 * GUI_GRID_W)
#define IGUI_GRID_BAR_HAbs		(4 * GUI_GRID_H)
#define IGUI_GRID_BAR_XDef		(safezoneX + 1 * GUI_GRID_W)
#define IGUI_GRID_BAR_YDef		(safezoneY + safezoneH - 4.5 * GUI_GRID_H)
#define IGUI_GRID_BAR_X			(profilenamespace getvariable ["IGUI_GRID_BAR_X",IGUI_GRID_BAR_XDef])
#define IGUI_GRID_BAR_Y			(profilenamespace getvariable ["IGUI_GRID_BAR_Y",IGUI_GRID_BAR_YDef])
#define IGUI_GRID_BAR_W			GUI_GRID_W
#define IGUI_GRID_BAR_H			GUI_GRID_H

//--- IGUI MP Progress
#define IGUI_GRID_MP_WAbs		(2.5 * GUI_GRID_W)
#define IGUI_GRID_MP_HAbs		(15 * GUI_GRID_H)
#define IGUI_GRID_MP_XDef		(safezoneX + safezoneW - 2 * GUI_GRID_W)
#define IGUI_GRID_MP_YDef		(5 * GUI_GRID_H + safezoneY)
#define IGUI_GRID_MP_X			(profilenamespace getvariable ["IGUI_GRID_MP_X",IGUI_GRID_MP_XDef])
#define IGUI_GRID_MP_Y			(profilenamespace getvariable ["IGUI_GRID_MP_Y",IGUI_GRID_MP_YDef])
#define IGUI_GRID_MP_W			GUI_GRID_W
#define IGUI_GRID_MP_H			GUI_GRID_H

//--- IGUI Custom Mission Display
#define IGUI_GRID_MISSION_WAbs		(20 * GUI_GRID_W)
#define IGUI_GRID_MISSION_HAbs		(5 * GUI_GRID_H)
#define IGUI_GRID_MISSION_XDef		(safezoneX + safezoneW - 21 * GUI_GRID_W)
#define IGUI_GRID_MISSION_YDef		(safezoneY + safezoneH - 10.5 * GUI_GRID_H)
#define IGUI_GRID_MISSION_X		(profilenamespace getvariable ["IGUI_GRID_MISSION_X",IGUI_GRID_MISSION_XDef])
#define IGUI_GRID_MISSION_Y		(profilenamespace getvariable ["IGUI_GRID_MISSION_Y",IGUI_GRID_MISSION_YDef])
#define IGUI_GRID_MISSION_W		GUI_GRID_W
#define IGUI_GRID_MISSION_H		GUI_GRID_H


///////////////////////////////////////////////////////////////////////////
/// Old
///////////////////////////////////////////////////////////////////////////

//--- Old grid, that is used for old A3 and TKOH displays
#define GUI_GRID_OLD_WAbs		((safezoneW / safezoneH) min 1.2)
#define GUI_GRID_OLD_HAbs		(GUI_GRID_OLD_WAbs / 1.2)
#define GUI_GRID_OLD_W			(GUI_GRID_OLD_WAbs / 32)
#define GUI_GRID_OLD_H			(GUI_GRID_OLD_HAbs / 20)
#define GUI_GRID_OLD_X			(safezoneX)
#define GUI_GRID_OLD_Y			(safezoneY + safezoneH - GUI_GRID_OLD_HAbs)

//--- Centered
//#define GUI_GRID_OLD_X		(safezoneX + (safezoneW - GUI_GRID_OLD_CENTER_WAbs)/2)
//--- Dark magic
//#define GUI_GRID_OLD_X		(profilenamespace getvariable ['GUI_GRID_OLD_X',(safezoneX + (safezoneW - GUI_GRID_OLD_CENTER_WAbs)/2)])
//#define GUI_GRID_OLD_Y		(profilenamespace getvariable ['GUI_GRID_OLD_Y',(safezoneY + safezoneH - GUI_GRID_OLD_HAbs)])

//MUF-TEST: Anchor near the right edge of the screen - when changing Interface size, this point doesn't change its X position
#define GUI_ANCHOR_RIGHT		(0.983 * safezoneW + safezoneX)
#define GUI_ANCHOR_LEFT			0

//--- Screen Center
#define GUI_GRID_OLD_CENTER_WAbs	GUI_GRID_OLD_WAbs
#define GUI_GRID_OLD_CENTER_HAbs	GUI_GRID_OLD_HAbs
#define GUI_GRID_OLD_CENTER_W		GUI_GRID_OLD_W
#define GUI_GRID_OLD_CENTER_H		GUI_GRID_OLD_H
#define GUI_GRID_OLD_CENTER_X		(safezoneX + (safezoneW - GUI_GRID_OLD_CENTER_WAbs)/2)
#define GUI_GRID_OLD_CENTER_Y		(safezoneY + (safezoneH - GUI_GRID_OLD_CENTER_HAbs)/2)

//--- 2D Editor
#define GUI_GRID_OLD_EDITOR_WAbs	GUI_GRID_OLD_CENTER_WAbs
#define GUI_GRID_OLD_EDITOR_HAbs	GUI_GRID_OLD_CENTER_HAbs
#define GUI_GRID_OLD_EDITOR_W		GUI_GRID_OLD_CENTER_W
#define GUI_GRID_OLD_EDITOR_H		GUI_GRID_OLD_CENTER_H
#define GUI_GRID_OLD_EDITOR_X		GUI_GRID_OLD_CENTER_X
#define GUI_GRID_OLD_EDITOR_Y		(safezoneY)

//--- Debug console (center down)
#define GUI_GRID_OLD_DEBUG_WAbs		GUI_GRID_OLD_WAbs
#define GUI_GRID_OLD_DEBUG_HAbs		GUI_GRID_OLD_HAbs
#define GUI_GRID_OLD_DEBUG_W		GUI_GRID_OLD_W
#define GUI_GRID_OLD_DEBUG_H		GUI_GRID_OLD_H
#define GUI_GRID_OLD_DEBUG_X		(safezoneX + (safezoneW - GUI_GRID_OLD_DEBUG_WAbs)/2)
#define GUI_GRID_OLD_DEBUG_Y		(safezoneY + safezoneH - GUI_GRID_OLD_DEBUG_HAbs)

//--- IGUI Common
#define IGUI_GRID_OLD_WAbs		GUI_GRID_OLD_WAbs
#define IGUI_GRID_OLD_HAbs		GUI_GRID_OLD_HAbs
#define IGUI_GRID_OLD_W			GUI_GRID_OLD_W
#define IGUI_GRID_OLD_H			GUI_GRID_OLD_H
#define IGUI_GRID_OLD_X			(safezoneX + (safezoneW - IGUI_GRID_OLD_WAbs) / 2)
#define IGUI_GRID_OLD_Y			(safezoneY + safezoneH - IGUI_GRID_OLD_HAbs)

//--- IGUI Bottom
#define IGUI_GRID_OLD_BOTTOM_WAbs	IGUI_GRID_OLD_WAbs
#define IGUI_GRID_OLD_BOTTOM_HAbs	IGUI_GRID_OLD_HAbs
#define IGUI_GRID_OLD_BOTTOM_W		IGUI_GRID_OLD_W
#define IGUI_GRID_OLD_BOTTOM_H		IGUI_GRID_OLD_H
#define IGUI_GRID_OLD_BOTTOM_X		(safezoneX + (safezoneW - IGUI_GRID_OLD_BOTTOM_WAbs) / 2)
#define IGUI_GRID_OLD_BOTTOM_Y		(safezoneY + safezoneH - IGUI_GRID_OLD_BOTTOM_HAbs)

//--- IGUI Analogue Gauges -----------------------------------------------------------------------------------------------------
//--- Analogue gauge - Speed
#define IGUI_GRID_GAUGESPEED_XDef	(safezoneX + (safezoneW / 2) - 19.75 * GUI_GRID_W)
#define IGUI_GRID_GAUGESPEED_YDef	(safezoneY + safezoneH - 11.7 * GUI_GRID_H)
#define IGUI_GRID_GAUGESPEED_X		(profilenamespace getvariable ['IGUI_GRID_GAUGESPEED_X',IGUI_GRID_GAUGESPEED_XDef])
#define IGUI_GRID_GAUGESPEED_Y		(profilenamespace getvariable ['IGUI_GRID_GAUGESPEED_Y',IGUI_GRID_GAUGESPEED_YDef])
#define IGUI_GRID_GAUGESPEED_WAbs	(7.5 * GUI_GRID_W)
#define IGUI_GRID_GAUGESPEED_HAbs	(7.5 * GUI_GRID_H)

//--- Analogue gauge - Alt
#define IGUI_GRID_GAUGEALT_XDef		(safezoneX + (safezoneW / 2) - 11.75 * GUI_GRID_W)
#define IGUI_GRID_GAUGEALT_YDef		(safezoneY + safezoneH - 11.7 * GUI_GRID_H)
#define IGUI_GRID_GAUGEALT_X		(profilenamespace getvariable ['IGUI_GRID_GAUGEALT_X',IGUI_GRID_GAUGEALT_XDef])
#define IGUI_GRID_GAUGEALT_Y		(profilenamespace getvariable ['IGUI_GRID_GAUGEALT_Y',IGUI_GRID_GAUGEALT_YDef])
#define IGUI_GRID_GAUGEALT_WAbs		(7.5 * GUI_GRID_W)
#define IGUI_GRID_GAUGEALT_HAbs		(7.5 * GUI_GRID_H)

//--- Analogue gauge - Horizon
#define IGUI_GRID_GAUGEHORIZON_XDef	(safezoneX + ((safezoneW - 7.5 * GUI_GRID_W) / 2))
#define IGUI_GRID_GAUGEHORIZON_YDef	(safezoneY + safezoneH - 11.7 * GUI_GRID_H)
#define IGUI_GRID_GAUGEHORIZON_X	(profilenamespace getvariable ['IGUI_GRID_GAUGEHORIZON_X',IGUI_GRID_GAUGEHORIZON_XDef])
#define IGUI_GRID_GAUGEHORIZON_Y	(profilenamespace getvariable ['IGUI_GRID_GAUGEHORIZON_Y',IGUI_GRID_GAUGEHORIZON_YDef])
#define IGUI_GRID_GAUGEHORIZON_WAbs	(7.5 * GUI_GRID_W)
#define IGUI_GRID_GAUGEHORIZON_HAbs	(7.5 * GUI_GRID_H)

//--- Analogue gauge - Stability
#define IGUI_GRID_GAUGESTABILITY_XDef	(safezoneX + (safezoneW / 2) + 4.25 * GUI_GRID_W)
#define IGUI_GRID_GAUGESTABILITY_YDef	(safezoneY + safezoneH - 11.7 * GUI_GRID_H)
#define IGUI_GRID_GAUGESTABILITY_X	(profilenamespace getvariable ['IGUI_GRID_GAUGESTABILITY_X',IGUI_GRID_GAUGESTABILITY_XDef])
#define IGUI_GRID_GAUGESTABILITY_Y	(profilenamespace getvariable ['IGUI_GRID_GAUGESTABILITY_Y',IGUI_GRID_GAUGESTABILITY_YDef])
#define IGUI_GRID_GAUGESTABILITY_WAbs	(7.5 * GUI_GRID_W)
#define IGUI_GRID_GAUGESTABILITY_HAbs	(7.5 * GUI_GRID_H)

//--- Analogue gauge - Compass
#define IGUI_GRID_GAUGECOMPASS_XDef	(safezoneX + (safezoneW / 2) + 12.25 * GUI_GRID_W)
#define IGUI_GRID_GAUGECOMPASS_YDef	(safezoneY + safezoneH - 11.7 * GUI_GRID_H)
#define IGUI_GRID_GAUGECOMPASS_X	(profilenamespace getvariable ['IGUI_GRID_GAUGECOMPASS_X',IGUI_GRID_GAUGECOMPASS_XDef])
#define IGUI_GRID_GAUGECOMPASS_Y	(profilenamespace getvariable ['IGUI_GRID_GAUGECOMPASS_Y',IGUI_GRID_GAUGECOMPASS_YDef])
#define IGUI_GRID_GAUGECOMPASS_WAbs	(7.5 * GUI_GRID_W)
#define IGUI_GRID_GAUGECOMPASS_HAbs	(7.5 * GUI_GRID_H)

//--- Analogue gauge - Damage indicators
// #define IGUI_GRID_GAUGEDAMAGE_XDef	(safezoneX + (safezoneW / 2) - 19 * GUI_GRID_W)
// #define IGUI_GRID_GAUGEDAMAGE_YDef	(safezoneY + safezoneH - 7 * GUI_GRID_H)
// #define IGUI_GRID_GAUGEDAMAGE_X		(profilenamespace getvariable ['IGUI_GRID_GAUGEDAMAGE_X',IGUI_GRID_GAUGEDAMAGE_XDef])
// #define IGUI_GRID_GAUGEDAMAGE_Y		(profilenamespace getvariable ['IGUI_GRID_GAUGEDAMAGE_Y',IGUI_GRID_GAUGEDAMAGE_YDef])
// #define IGUI_GRID_GAUGEDAMAGE_WAbs	(9.6 * GUI_GRID_W)
// #define IGUI_GRID_GAUGEDAMAGE_HAbs	(2.4 * GUI_GRID_H)
//--- IGUI Analogue Gauges -----------------------------------------------------------------------------------------------------

//--- Sling Load Assistant
#define IGUI_GRID_SLINGLOADASSISTANT_XDef	(safezoneX + safezoneW - 8 * GUI_GRID_W)
#define IGUI_GRID_SLINGLOADASSISTANT_YDef	(safezoneY + safezoneH - 19.5 * GUI_GRID_H)
#define IGUI_GRID_SLINGLOADASSISTANT_WDef	(7 * GUI_GRID_W)
#define IGUI_GRID_SLINGLOADASSISTANT_HDef	(9.5 * GUI_GRID_H)
#define IGUI_GRID_SLINGLOADASSISTANT_X		(profilenamespace getvariable ['IGUI_GRID_SLINGLOADASSISTANT_X',IGUI_GRID_SLINGLOADASSISTANT_XDef])
#define IGUI_GRID_SLINGLOADASSISTANT_Y		(profilenamespace getvariable ['IGUI_GRID_SLINGLOADASSISTANT_Y',IGUI_GRID_SLINGLOADASSISTANT_YDef])
#define IGUI_GRID_SLINGLOADASSISTANT_WAbs	(profilenamespace getvariable ['IGUI_GRID_SLINGLOADASSISTANT_W',IGUI_GRID_SLINGLOADASSISTANT_WDef])
#define IGUI_GRID_SLINGLOADASSISTANT_HAbs	(profilenamespace getvariable ['IGUI_GRID_SLINGLOADASSISTANT_H',IGUI_GRID_SLINGLOADASSISTANT_HDef])

//--- Squad Radar
// #define IGUI_GRID_SQUADRADAR_XDef	(safezoneX + (safezoneW / 2) - 3 * GUI_GRID_W)
// #define IGUI_GRID_SQUADRADAR_YDef	(safezoneY + safezoneH - 10.9 * GUI_GRID_H)
// #define IGUI_GRID_SQUADRADAR_X		(profilenamespace getvariable ['IGUI_GRID_SQUADRADAR_X',IGUI_GRID_SQUADRADAR_XDef])
// #define IGUI_GRID_SQUADRADAR_Y		(profilenamespace getvariable ['IGUI_GRID_SQUADRADAR_Y',IGUI_GRID_SQUADRADAR_YDef])
// #define IGUI_GRID_SQUADRADAR_WAbs	(19 * GUI_GRID_W)
// #define IGUI_GRID_SQUADRADAR_HAbs	(6 * GUI_GRID_H)

//--- IGUI Action / Command Menu
#define IGUI_GRID_OLD_MENU_WAbs		(4.5 * IGUI_GRID_OLD_W)
#define IGUI_GRID_OLD_MENU_HAbs		(10 * (IGUI_TEXT_SIZE_MEDIUM * 1.3))
#define IGUI_GRID_OLD_MENU_XDef		(1 * IGUI_GRID_OLD_W + safezoneX)
#define IGUI_GRID_OLD_MENU_YDef		(5 * IGUI_GRID_OLD_H + safezoneY)
#define IGUI_GRID_OLD_MENU_X		(profilenamespace getvariable ["IGUI_GRID_OLD_MENU_X",IGUI_GRID_OLD_MENU_XDef])
#define IGUI_GRID_OLD_MENU_Y		(profilenamespace getvariable ["IGUI_GRID_OLD_MENU_Y",IGUI_GRID_OLD_MENU_YDef])
#define IGUI_GRID_OLD_MENU_W		IGUI_GRID_OLD_W
#define IGUI_GRID_OLD_MENU_H		IGUI_GRID_OLD_H

//--- E3
/*
#define IGUI_GRID_OLD_MENU_WAbs		(4.5 * IGUI_GRID_OLD_W)
#define IGUI_GRID_OLD_MENU_HAbs		(10 * (IGUI_TEXT_SIZE_MEDIUM * 1.3))
#define IGUI_GRID_OLD_MENU_XDef		(0.6)
#define IGUI_GRID_OLD_MENU_YDef		(0.55)
#define IGUI_GRID_OLD_MENU_X		(profilenamespace getvariable ["IGUI_GRID_OLD_MENU_X",IGUI_GRID_OLD_MENU_XDef])
#define IGUI_GRID_OLD_MENU_Y		(profilenamespace getvariable ["IGUI_GRID_OLD_MENU_Y",IGUI_GRID_OLD_MENU_YDef])
#define IGUI_GRID_OLD_MENU_W		IGUI_GRID_OLD_W
#define IGUI_GRID_OLD_MENU_H		IGUI_GRID_OLD_H
*/

//--- IGUI Task
#define IGUI_GRID_OLD_TASK_WAbs		(12 * IGUI_GRID_OLD_W)
#define IGUI_GRID_OLD_TASK_HAbs		(2 * IGUI_GRID_OLD_H)
#define IGUI_GRID_OLD_TASK_XDef		(10 * IGUI_GRID_OLD_W + IGUI_GRID_OLD_X)
#define IGUI_GRID_OLD_TASK_YDef		(1 * IGUI_GRID_OLD_H + safezoneY)
#define IGUI_GRID_OLD_TASK_X		IGUI_GRID_OLD_TASK_XDef
#define IGUI_GRID_OLD_TASK_Y		IGUI_GRID_OLD_TASK_YDef
#define IGUI_GRID_OLD_TASK_W		IGUI_GRID_OLD_W
#define IGUI_GRID_OLD_TASK_H		IGUI_GRID_OLD_H

//--- IGUI PIP
#define IGUI_GRID_OLD_PIP_XDef		(safezoneX + safezoneW - 6.8 * IGUI_GRID_OLD_W)
#define IGUI_GRID_OLD_PIP_YDef		(7 * IGUI_GRID_OLD_H + IGUI_GRID_OLD_Y)
#define IGUI_GRID_OLD_PIP_WDef		(6 * IGUI_GRID_OLD_W)
#define IGUI_GRID_OLD_PIP_HDef		(IGUI_GRID_OLD_PIP_WDef)
//#define IGUI_GRID_OLD_PIP_X		(profilenamespace getvariable ['IGUI_GRID_OLD_PIP_X',IGUI_GRID_OLD_PIP_XDef])
//#define IGUI_GRID_OLD_PIP_Y		(profilenamespace getvariable ['IGUI_GRID_OLD_PIP_Y',IGUI_GRID_OLD_PIP_YDef])
//#define IGUI_GRID_OLD_PIP_WAbs	(profilenamespace getvariable ['IGUI_GRID_OLD_PIP_W',IGUI_GRID_OLD_PIP_WDef])
#define IGUI_GRID_OLD_PIP_X		IGUI_GRID_OLD_PIP_XDef
#define IGUI_GRID_OLD_PIP_Y		IGUI_GRID_OLD_PIP_YDef
#define IGUI_GRID_OLD_PIP_WAbs		IGUI_GRID_OLD_PIP_WDef
#define IGUI_GRID_OLD_PIP_HAbs		(IGUI_GRID_OLD_PIP_WAbs)


//--- MUF - experimental optics grid
// #define GUI_GRID_OLD_OPTICS_X	(SafezoneX + ((SafezoneW - SafezoneH) / 2))
// #define GUI_GRID_OLD_OPTICS_Y	(SafezoneY)
// #define GUI_GRID_OLD_OPTICS_W	(0.01875)
// #define GUI_GRID_OLD_OPTICS_H	(0.025)
// #define GUI_GRID_OLD_OPTICS_WAbs	((SafezoneX + ((SafezoneW - SafezoneH) / 2)) / 0.01875)
// #define GUI_GRID_OLD_OPTICS_HAbs	(SafezoneH / 0.01875)

#define GUI_GRID_OLD_OPTICS_X		(SafezoneX + ((SafezoneW - SafezoneH) / 2))
#define GUI_GRID_OLD_OPTICS_Y		(SafezoneY)
#define GUI_GRID_OLD_OPTICS_W		(0.01875 * SafezoneH)
#define GUI_GRID_OLD_OPTICS_H		(0.025 * SafezoneH)
#define GUI_GRID_OLD_OPTICS_WAbs	(SafezoneH)
#define GUI_GRID_OLD_OPTICS_HAbs	(SafezoneH)

//--- MUF - experimental AV Terminal grid
#define GUI_GRID_OLD_AV_TERMINAL_X	(safezoneX)
#define GUI_GRID_OLD_AV_TERMINAL_Y	(safezoneY)
#define GUI_GRID_OLD_AV_TERMINAL_W	(safezoneW / 64)
#define GUI_GRID_OLD_AV_TERMINAL_H	(safezoneH / 40)
#define GUI_GRID_OLD_AV_TERMINAL_WAbs	(safezoneW)
#define GUI_GRID_OLD_AV_TERMINAL_HAbs	(safezoneH)
