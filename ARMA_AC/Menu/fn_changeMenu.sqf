#include "macros.h"
/****************************************************************************************
@created     : 14 mai 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
REQUIRE_ADMIN;

disableSerialization;
private "_newMenu";
_newMenu = param[0,"",[""]];
_id = getNumber (missionConfigFile >> _newMenu >> "idd");
if(!isNull (findDisplay _id)) exitWith {[format["%1 already opened",findDisplay _id]] call ac_fnc_debugMessage;};

 switch (_newMenu) do { 
 	case "ac_admin_menu" : {
        ac_old_display_id = _id;
        (findDisplay ac_old_display_id) closeDisplay 0;
        (findDisplay 46) createDisplay _newMenu;
     	[] call ac_fnc_loadAdminMenu;
    }; 
 	case "ac_logs_menu" : {
        ac_old_display_id = _id;
     	(findDisplay ac_old_display_id) closeDisplay 0;
        (findDisplay 46) createDisplay _newMenu;
     	[] call ac_fnc_loadLogsMenu;
    }; 
 	case "ac_objects_menu" : {
        ac_old_display_id = _id;
     	(findDisplay ac_old_display_id) closeDisplay 0;
        (findDisplay 46) createDisplay _newMenu;
     	[] call ac_fnc_loadObjectsMenu;
    }; 
 	case "ac_console_menu" : {
        ac_old_display_id = _id; 
     	(findDisplay ac_old_display_id) closeDisplay 0;
        (findDisplay 46) createDisplay _newMenu;
     	[] call ac_fnc_loadConsoleMenu;
    }; 
    case "ac_config_menu" : {
        (findDisplay 46) createDisplay _newMenu;
        [] call ac_fnc_cfgMenuOpen;
        waitUntil {isNull findDisplay _id};
        ["ac_logs_menu"] call ac_fnc_changeMenu;
    };
    case "ac_spectate_menu" : {
        ac_old_display_id = _id; 
        (findDisplay ac_old_display_id) closeDisplay 0;
        (findDisplay 46) createDisplay _newMenu;
        [] call ac_fnc_loadSpectateMenu;
    };
    case "ac_map_menu" : {
        ac_old_display_id = _id; 
        (findDisplay ac_old_display_id) closeDisplay 0;
        (findDisplay 46) createDisplay _newMenu;
        [] call ac_fnc_loadMapMenu;
    };
 	default {};
 };