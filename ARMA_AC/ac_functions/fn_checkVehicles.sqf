#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;

private "_allowedVehicles";
_allowedVehicles = param [0,[],[[]]];

if(vehicle player != player) then {
 if(!(tolower (typeof vehicle player) in _allowedVehicles)) then {
 _message = format["%1 (%2) : bad vehicle %3.",name player,getplayeruid player,typeof vehicle player];
 [RISK_HIGH,"AC_BadVehicle.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
 deleteVehicle vehicle player;
 DOCRASH;
 };
};