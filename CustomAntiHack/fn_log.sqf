#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/
_securityRisk = [_this,0,1,[0]] call bis_fnc_param;
_file = [_this,1,"noFile",[""]] call bis_fnc_param;
_content = [_this,2,"noText",[""]] call bis_fnc_param;

_toLog = [_securityRisk,_file,_content];

if(isNil "ac_logs") then {ac_logs = []};
if(count ac_logs > 100) then {ac_logs deleteAt 0};
ac_logs pushBack _toLog;

[[_securityRisk,_file,_content],"ac_fnc_receiveNotif",call ac_fnc_getAdmins,false] call bis_fnc_mp; // notify admins :D
"aclogger" callExtension format["log;aclogger|%1;%2",_file,_content]; // | is replaced by directory separator , it's not static because different in Linux/Windows