#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/
_securityRisk = param [0,1,[0]];
_file = param [1,"noFile",[""]];
_content = param [2,"noText",[""]];

diag_log _content;
_toLog = [_securityRisk,_file,_content];

if(isNil "ac_logs") then {ac_logs = []};
if(count ac_logs > 100) then {ac_logs deleteAt 0};
ac_logs pushBack _toLog;

[_securityRisk,_file,_content] remoteExecCall ["ac_fnc_receiveNotif",call ac_fnc_getAdmins];
"aclogger" callExtension format["log;aclogger|%1;%2",_file,_content]; // | is replaced by directory separator , it's not static because different in Linux/Windows