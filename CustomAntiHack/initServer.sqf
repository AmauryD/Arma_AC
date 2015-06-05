#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/

_version = call compile ("aclogger" callExtension "version");
if(isNil "_version") then {
	diag_log "=======================================";
	diag_log "aclogger is not present on the server , cheaters will not be logged in aclogger folder.";
	diag_log "=======================================";
}else{
	diag_log format["aclogger running in version %1",_version];
};

ac_logs = [];

{
_x addPublicVariableEventHandler {_this call ac_fnc_MPexec};
}foreach getArray (AC_CFG_MP >> "supported_packets");