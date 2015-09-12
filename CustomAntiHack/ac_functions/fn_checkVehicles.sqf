#include "macros.h"

private "_allowedVehicles";
_allowedVehicles = [_this,0,[],[[]]] call bis_fnc_param;

if(vehicle player != player) then {
 if(!(tolower (typeof vehicle player) in _allowedVehicles)) then {
 _message = format["%1 (%2) : bad vehicle %3.",name player,getplayeruid player,typeof vehicle player];
 [[RISK_HIGH,"AC_BadVehicle.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
 deleteVehicle vehicle player;
 if(!DEBUG) then {DOCRASH};
 };
};