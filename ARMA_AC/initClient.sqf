#include "macros.h"
/****************************************************************************************
@created     : 11 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : init
*****************************************************************************************/
REQUIRE_CLIENT;
scriptName "ac_init_client";

waitUntil{!isNull findDisplay 46};

[] call compile preprocessFileLineNumbers (AC_FOLDER + "\initClientFunctions.sqf");

if !AC_ENABLED exitWith {};

[] spawn {
  if !CHAT_CHECK exitWith {};
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

 [getArray (AC_CFG_VARS_VARS >> "forbidden"),getArray (AC_CFG_VARS_VARS >> "allowed"),[],VARIABLES_CHECK] params ["_forbidden_variables","_allowed_variables","_cache","_check_vars"];

 _allowed_variables = _allowed_variables apply {toLower _x};
 _forbidden_variables = _forbidden_variables apply {toLower _x};

 while{true} do {
  if((unitRecoilCoefficient player) < 1) then {
    [RISK_HACK,"AC_LOG.log",format["%1 (%2) no recoil hack",profileName,getPlayerUID player]] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
    DOCRASH;
  };

  if(_check_vars) then {
    _cache = [_cache,_forbidden_variables,_allowed_variables] call ac_fnc_checkVars; // cache stored in private var for security issues
  };

  uisleep 10;
 };
};

[] spawn {
 [getArray (AC_CFG >> "allowedDisplays"),getArray (AC_CFG >> "allowedVehicles"),getArray (AC_CFG >> "allowed_Weapons"),DISPLAY_CHECK,VEHICLES_CHECK,WEAPONSHOLDER_CHECK] params ["_allowed_displays","_allowed_vehicles","_allowed_weapons","_check_displays","_check_vehicles","_check_weapons"];
 
 _allowed_weapons = _allowed_weapons apply {tolower _x};
 _allowed_vehicles = _allowed_vehicles apply {tolower _x};

 while{true} do {

  if(_check_displays) then {
    [_allowed_displays] call ac_fnc_checkDisplays;
  };

  if(_check_vehicles) then {
    [_allowed_vehicles] call ac_fnc_checkVehicles;
  };

  if(_check_weapons) then {
    [_allowed_weapons] call ac_fnc_checkWeapons;
  };

  uisleep 1;
 };
};             
