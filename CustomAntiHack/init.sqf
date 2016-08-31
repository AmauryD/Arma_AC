#include "macros.h"
/*
By [utopia] Amaury
created : 11/05/2015
updated : 23/05/2015
contact on the ts3 : ts.utopiagaming.fr or the website www.utopiagaming.fr
*/

scriptName "ac_init_client";
REQUIRE_CLIENT;
COMPILE_INIT;

// _dir variable is used in the COMPILE macro , if you want to use the function : [_dir,_file,fn_name] call ac_compile
_dir = "CustomAntiHack\basic_functions";
COMPILE("fn_strTok",               "ac_fnc_strTok");
COMPILE("fn_removeChar",           "ac_fnc_removeChar");
COMPILE("fn_findPlayerByUid",      "ac_fnc_findPlayerByUid");
COMPILE("fn_beginWith",            "ac_fnc_beginWith");
COMPILE("fn_beginWiths",           "ac_fnc_beginWiths");

_dir = "CustomAntiHack\ac_functions";
COMPILE("fn_checkFiles",           "ac_fnc_checkFiles");
COMPILE("fn_checkVars",            "ac_fnc_checkVars");
COMPILE("fn_checkWeapons",         "ac_fnc_checkWeapons");
COMPILE("fn_checkDisplays",        "ac_fnc_checkDisplays");
COMPILE("fn_checkVehicles",        "ac_fnc_checkVehicles");

COMPILE("fn_getAdmins",            "ac_fnc_getAdmins");
COMPILE("fn_receiveNotif",         "ac_fnc_receiveNotif");
COMPILE("fn_receiveAdmin",         "ac_fnc_receiveAdmin");
COMPILE("fn_cfgStringNbr",         "ac_fnc_cfgStringNbr");
COMPILE("fn_interactWithContainer","ac_fnc_interactWithContainer");
COMPILE("fn_handleTextChat",       "ac_fnc_handleTextChat");

_dir = "CustomAntiHack\menu";
COMPILE("fn_updateSpawnedList",    "ac_fnc_updateSpawnedList");
COMPILE("fn_update",               "ac_fnc_update");
COMPILE("fn_outputNamespace",      "ac_fnc_outputNamespace");
COMPILE("fn_open",                 "ac_fnc_open");
COMPILE("fn_onSpawnTypeChanged",   "ac_fnc_onSpawnTypeChanged");
COMPILE("fn_onSpawnedClick",       "ac_fnc_onSpawnedClick");
COMPILE("fn_onSpawnClick",         "ac_fnc_onSpawnClick");
COMPILE("fn_onModeSelChanged",     "ac_fnc_onModeSelChanged");
COMPILE("fn_onLogSelChanged",      "ac_fnc_onLogSelChanged");
COMPILE("fn_onAction",             "ac_fnc_onAction");
COMPILE("fn_copyConsoleLBSel",     "ac_fnc_copyConsoleLBSel");
COMPILE("fn_consoleExec",          "ac_fnc_consoleExec");
COMPILE("fn_changeMenu",           "ac_fnc_changeMenu");

waitUntil{!isnil "BIS_fnc_init"};
waitUntil{BIS_fnc_init};

if(!AC_ENABLED) exitWith {};


[] spawn {
  if(!CHAT_CHECK) exitWith {};
  while {true} do {
  waitUntil {!isNull findDisplay 24};
  findDisplay 24 displayAddEventHandler ["KeyUp",ac_fnc_handleTextChat];
  findDisplay 24 displayAddEventHandler ["KeyDown",ac_fnc_handleTextChat];
  waitUntil {isNull findDisplay 24};
  };
};

if(getplayeruid player in (getArray (AC_CFG >> "admins"))) exitWith {
  [player] remoteExecCall ["ac_fnc_adminRequest",EXEC_SERVER];
};

if(getText(configFile >> "CfgFunctions" >> "init") != "A3\functions_f\initFunctions.sqf") exitWith {
  [RISK_HACK,"AC_LOG.log",format["%1 (%2) Incorrect initFunctions path (%3)",profileName,getPlayerUID player,getText(configFile >> "CfgFunctions" >> "init")]] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
  DOCRASH;
};

if(WEAPONSHOLDER_CHECK) then { player addEventHandler["Take",ac_fnc_interactWithContainer] };
if(FILES_CHECK)         then { call AC_fnc_checkFiles };

[] spawn {

 [[],[],[],[]] params ["_forbidden_variables","_allowed_variables","_cache"];

 {_allowed_variables pushBack (tolower _x)}foreach getArray (AC_CFG_VARS_VARS >> "allowed");
 {_forbidden_variables pushBack (tolower _x)}foreach getArray (AC_CFG_VARS_VARS >> "forbidden");

 while{true} do {
  if((unitRecoilCoefficient player) < 1) then {
    [RISK_HACK,"AC_LOG.log",format["%1 (%2) no recoil hack",profileName,getPlayerUID player]] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
    DOCRASH;
  };

  if(VARIABLES_CHECK) then {
    _cache = [_cache,_forbidden_variables,_allowed_variables] call ac_fnc_checkVars; // cache stored in private var for security issues
  };

  uisleep 10;
 };
};

[] spawn {
 [getArray (AC_CFG >> "allowedDisplays"),[],[]] params ["_allowed_displays","_allowed_vehicles","_allowed_weapons"];
 
 {_allowed_weapons pushBack (tolower _x)}foreach getArray (AC_CFG >> "allowed_Weapons");
 {_allowed_vehicles pushBack (tolower _x)}foreach getArray (AC_CFG >> "allowedVehicles");

 while{true} do {

  if(DISPLAY_CHECK) then {
    [_allowed_displays] call ac_fnc_checkDisplays;
  };

  if(VEHICLES_CHECK) then {
    [_allowed_vehicles] call ac_fnc_checkVehicles;
  };

  if(WEAPONSHOLDER_CHECK) then {
    [_allowed_weapons] call ac_fnc_checkWeapons;
  };

  uisleep 1;
 };
};             
