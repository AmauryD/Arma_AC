#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_SERVER;

_securityRisk = param [0,1,[0]];
_file = param [1,"noFile",[""]];
_content = param [2,"noText",[""]];

_toLog = [_securityRisk,_file,_content];

if(isNil "ac_logs") then {ac_logs = []};
if(count ac_logs > 100) then {ac_logs deleteAt 0};
ac_logs pushBack _toLog;

[_content] call ac_fnc_debugMessage;

[_securityRisk,_file,_content] remoteExecCall ["ac_fnc_receiveNotif",call ac_fnc_getAdmins];
"aclogger" callExtension format["log$%1$%2",_file,_content]; // | is replaced by directory separator , it's not static because different in Linux/Windows