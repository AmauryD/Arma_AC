#include "macros.h"

private "_allowedVehicles";
_allowedVehicles = param [0,[],[[]]];

if(vehicle player != player) then {
 if(!(tolower (typeof vehicle player) in _allowedVehicles)) then {
 _message = format["%1 (%2) : bad vehicle %3.",name player,getplayeruid player,typeof vehicle player];
 [RISK_HIGH,"AC_BadVehicle.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
 deleteVehicle vehicle player;
 if(!DEBUG) then {DOCRASH};
 };
};