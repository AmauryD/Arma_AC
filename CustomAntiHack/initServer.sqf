#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/

if(!isServer) exitWith {};

ac_fnc_logScript = compileFinal preprocessFileLineNumbers "CustomAntiHack\fn_logScript.sqf";
ac_fnc_log = compileFinal preprocessFileLineNumbers "CustomAntiHack\fn_log.sqf";
ac_fnc_adminRequest = compileFinal preprocessFileLineNumbers "CustomAntiHack\fn_adminRequest.sqf";
ac_fnc_MPexec = compileFinal preprocessFileLineNumbers "CustomAntiHack\fn_MPexec.sqf";
ac_fnc_getAdmins = compileFinal preprocessFileLineNumbers "CustomAntiHack\fn_getAdmins.sqf";
ac_fnc_filterMP = compileFinal preprocessFileLineNumbers "CustomAntiHack\fn_filterMP.sqf";
ac_fnc_inAllowedFunctions = compileFinal preprocessFileLineNumbers "CustomAntiHack\fn_inAllowedFunctions.sqf";

ac_fnc_strTok = compileFinal preprocessFileLineNumbers "CustomAntiHack\basic_functions\fn_strTok.sqf";
ac_fnc_removeChar = compileFinal preprocessFileLineNumbers "CustomAntiHack\basic_functions\fn_removeChar.sqf";
ac_fnc_findPlayerByUid = compileFinal preprocessFileLineNumbers "CustomAntiHack\basic_functions\fn_findPlayerByUid.sqf";
ac_fnc_beginWith = compileFinal preprocessFileLineNumbers "CustomAntiHack\basic_functions\fn_beginWith.sqf";
ac_fnc_beginWiths = compileFinal preprocessFileLineNumbers "CustomAntiHack\basic_functions\fn_beginWiths.sqf";

_version = call compile ("aclogger" callExtension "version");
if(isNil "_version") then {
	diag_log "=======================================";
	diag_log "aclogger is not present on the server , cheaters will not be logged in aclogger folder.";
	diag_log "=======================================";
}else{
	diag_log format["aclogger running in version %1",_version];
};

ac_logs = [];

if(MP_ENABLED) then {
  {
	_x addPublicVariableEventHandler {_this call ac_fnc_MPexec};
  }foreach getArray (AC_CFG_MP >> "supported_packets");
};
