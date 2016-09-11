#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 11 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;

private ["_allowedVehicles","_vehicle_player","_vehicle_player_type"];
_allowedVehicles = param [0,[],[[]]];
_vehicle_player = vehicle player;

if(_vehicle_player isEqualTo player) exitWith {};
_vehicle_player_type = toLower (typeOf _vehicle_player);

if !(_vehicle_player in _allowedVehicles) then {
	_message = format["%1 (%2) : bad vehicle %3.",name player,getplayeruid player,_vehicle_player_type];
	[RISK_HIGH,"AC_BadVehicle.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
	DeleteVehicle _vehicle_player;
	[VEHICLES_ACTION] call ac_fnc_handleAction;
};