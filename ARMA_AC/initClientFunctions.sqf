#include "macros.h"
/****************************************************************************************
@created     : 06 september 2016
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : init functions
*****************************************************************************************/
REQUIRE_CLIENT;
COMPILE_INIT;

/** CLIENT FUNCTIONS **/

_dir = AC_FOLDER + "\basic_functions";
COMPILE("fn_debugMessage",               	   "ac_fnc_debugMessage");
COMPILE("fn_strTok",               		       "ac_fnc_strTok");
COMPILE("fn_removeChar",          		       "ac_fnc_removeChar");
COMPILE("fn_findPlayerByUid",     			   "ac_fnc_findPlayerByUid");
COMPILE("fn_beginWith",           			   "ac_fnc_beginWith");
COMPILE("fn_beginWiths",          			   "ac_fnc_beginWiths");

_dir = AC_FOLDER + "\ac_functions";
COMPILE("fn_checkFiles",          			   "ac_fnc_checkFiles");
COMPILE("fn_checkVars",            			   "ac_fnc_checkVars");
COMPILE("fn_checkWeapons",       			   "ac_fnc_checkWeapons");
COMPILE("fn_checkDisplays",      			   "ac_fnc_checkDisplays");
COMPILE("fn_checkVehicles",       			   "ac_fnc_checkVehicles");
COMPILE("fn_getAdmins",           			   "ac_fnc_getAdmins");
COMPILE("fn_receiveNotif",         			   "ac_fnc_receiveNotif");
COMPILE("fn_receiveAdmin",         			   "ac_fnc_receiveAdmin");
COMPILE("fn_welcomeAdmin",         			   "ac_fnc_welcomeAdmin");
COMPILE("fn_cfgStringNbr",         			   "ac_fnc_cfgStringNbr");
COMPILE("fn_interactWithContainer",			   "ac_fnc_interactWithContainer");
COMPILE("fn_handleTextChat",       			   "ac_fnc_handleTextChat");

/** ADMINS FUNCTIONS **/

_dir = AC_FOLDER + "\menu\CfgHelperMenu";
COMPILE("fn_setToConfig",         			   "ac_fnc_setToConfig");
COMPILE("fn_addAdmin",          			   "ac_fnc_addAdmin");
COMPILE("fn_getFromConfig",                    "ac_fnc_getFromConfig");
COMPILE("fn_removeFromConfig",                 "ac_fnc_removeFromConfig");
COMPILE("fn_open",                             "ac_fnc_cfgMenuOpen");
COMPILE("fn_outputConfig",                     "ac_fnc_outputConfig");
COMPILE("fn_addbadFile",                       "ac_fnc_addBadFile");
COMPILE("fn_addWeapon",           			   "ac_fnc_addWeapon");
COMPILE("fn_addDisplay",           			   "ac_fnc_addDisplay");
COMPILE("fn_lbDeleteAt",          			   "ac_fnc_lbDeleteAt");
COMPILE("fn_lbToArray",           			   "ac_fnc_lbToArray");
COMPILE("fn_addVehicle",           			   "ac_fnc_addVehicle");
COMPILE("fn_addVariable",           		   "ac_fnc_addVariable");
COMPILE("fn_allGameDisplays",           	   "ac_fnc_allGameDisplays");
COMPILE("fn_removeAllbadFiles",                "ac_fnc_removeAllBadFiles");
COMPILE("fn_removeAllVehicles",                "ac_fnc_removeAllVehicles");
COMPILE("fn_removeAllVariables",               "ac_fnc_removeAllVariables");
COMPILE("fn_removeVariable",                   "ac_fnc_removeVariable");
COMPILE("fn_removeAllWeapons",        		   "ac_fnc_removeAllWeapons");
COMPILE("fn_loadCurrentCfgArray",        	   "ac_fnc_loadCurrentCfgArray");
COMPILE("fn_loadFromConfig",          		   "ac_fnc_loadFromConfig");
COMPILE("fn_log",           				   "ac_fnc_logCfg");
COMPILE("fn_newCfgArray",           		   "ac_fnc_newCfgArray");
COMPILE("fn_addBadWord",           			   "ac_fnc_addBadWord");
COMPILE("fn_addForbiddenVariable",             "ac_fnc_addForbiddenVariable");
COMPILE("fn_addForbiddenTag",           	   "ac_fnc_addForbiddenTag");
COMPILE("fn_addAllowedTag",           		   "ac_fnc_addAllowedTag");
COMPILE("fn_fillLists",          		       "ac_fnc_fillLists");
COMPILE("fn_fillWeaponsList",          		   "ac_fnc_fillWeaponsList");
COMPILE("fn_fillVehiclesList",          	   "ac_fnc_fillVehiclesList");
COMPILE("fn_fillVariablesList",          	   "ac_fnc_fillVariablesList");
COMPILE("fn_fillPlayersList",           	   "ac_fnc_fillPlayersList");
COMPILE("fn_fillDisplaysList",                 "ac_fnc_fillDisplaysList");

_dir = AC_FOLDER + "\menu";
COMPILE("fn_changeMenu",                       "ac_fnc_changeMenu");
COMPILE("fn_loadAdminMenu",           		   "ac_fnc_loadAdminMenu");
COMPILE("fn_loadConsoleMenu",           	   "ac_fnc_loadConsoleMenu");
COMPILE("fn_loadSpectateMenu",                 "ac_fnc_loadSpectateMenu");
COMPILE("fn_loadObjectsMenu",         	  	   "ac_fnc_loadObjectsMenu");
COMPILE("fn_refreshMapMenu",           		   "ac_fnc_refreshMapMenu");
COMPILE("fn_loadLogsMenu",           		   "ac_fnc_loadLogsMenu");
COMPILE("fn_addMenusToList",           		   "ac_fnc_addMenusToList");
COMPILE("fn_refreshConsoleMenu",               "ac_fnc_refreshConsoleMenu");
COMPILE("fn_filterHackLogs",           		   "ac_fnc_filterHackLogs");
COMPILE("fn_showLogDescription",           	   "ac_fnc_showLogDescription");
COMPILE("fn_getRiskColor",          		   "ac_fnc_getRiskColor");
COMPILE("fn_loadMapMenu",           		   "ac_fnc_loadMapMenu");
COMPILE("fn_editDialog",           			   "ac_fnc_editDialog");
COMPILE("fn_changeObjectsList",          	   "ac_fnc_changeObjectsList");
COMPILE("fn_refreshObjectsMenu",           	   "ac_fnc_refreshObjectsMenu");

_dir = AC_FOLDER + "\menu\actions";
COMPILE("fn_copyAllLogs",                	   "ac_fnc_copyAllLogs");
COMPILE("fn_copySelectedLog",         		   "ac_fnc_copySelectedLog");
COMPILE("fn_godMode",           			   "ac_fnc_godMode");
COMPILE("fn_vehiclegodMode",           		   "ac_fnc_vehiclegodMode");
COMPILE("fn_menuCreateobject",          	   "ac_fnc_menuCreateObject");
COMPILE("fn_repairAllObjects",           	   "ac_fnc_repairAllObjects");
COMPILE("fn_refuelAllObjects",           	   "ac_fnc_refuelAllObjects");
COMPILE("fn_deleteAllObjects",          	   "ac_fnc_deleteAllObjects");
COMPILE("fn_repairSelObject",           	   "ac_fnc_repairSelObject");
COMPILE("fn_refuelSelObject",          		   "ac_fnc_refuelSelObject");
COMPILE("fn_deleteSelObject",          		   "ac_fnc_deleteSelObject");
COMPILE("fn_teleportOnObject",                 "ac_fnc_teleportOnObject");
COMPILE("fn_execLocal",           			   "ac_fnc_execLocal");
COMPILE("fn_execGlobal",           			   "ac_fnc_execGlobal");
COMPILE("fn_execServer",           			   "ac_fnc_execServer");
COMPILE("fn_repair",           				   "ac_fnc_repair");
COMPILE("fn_heal",           				   "ac_fnc_heal");
COMPILE("fn_kick",           				   "ac_fnc_kick");
COMPILE("fn_ban",           				   "ac_fnc_ban");
COMPILE("fn_kill",          				   "ac_fnc_kill");
COMPILE("fn_spectate",          			   "ac_fnc_spectate");
COMPILE("fn_glue",           				   "ac_fnc_glue");
COMPILE("fn_freeCamera",           			   "ac_fnc_freeCamera");
COMPILE("fn_armory",          				   "ac_fnc_armory");
COMPILE("fn_repair",           				   "ac_fnc_repair");
COMPILE("fn_mapTeleport",           		   "ac_fnc_mapTeleport");
COMPILE("fn_teleportPlayer",          		   "ac_fnc_teleportPlayer");
COMPILE("fn_bulletsMode",          			   "ac_fnc_bulletsMode");
COMPILE("fn_teleportToPlayer",          	   "ac_fnc_teleportToPlayer");
COMPILE("fn_removeGear",           			   "ac_fnc_removeGear");
COMPILE("fn_spectateInList",           		   "ac_fnc_spectateInList");
COMPILE("fn_spectateOff",           		   "ac_fnc_spectateOff");
COMPILE("fn_addWaypoint",           		   "ac_fnc_addWaypoint");
COMPILE("fn_WaypointTeleport",         		   "ac_fnc_WaypointTeleport");
COMPILE("fn_deleteWaypoint",           		   "ac_fnc_deleteWaypoint");

