#include "macros.h"
/****************************************************************************************
@created     : 11 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : init
*****************************************************************************************/
REQUIRE_CLIENT;
scriptName "ac_init_client";

waitUntil{!isnil "BIS_fnc_init"};
waitUntil{BIS_fnc_init};

[] call compile preprocessFileLineNumbers (AC_FOLDER + "\initClientFunctions.sqf");

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
