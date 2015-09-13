#include "macros.h"

_pos spawn {
 _pos2D = [_this select 0,_this select 1,0];
 uiSleep 0.5;
 _pos2Dplayer = [getPosATL player select 0,getPosATL player select 1,0];

 if(_pos2Dplayer isEqualTo _pos2D) then {
 [[RISK_LOW,"AC_LOG.log",format["%1 (%2) teleportation",profileName,getPlayerUID player]],"AC_fnc_log",false,false] call ac_fnc_mp;
 };
};