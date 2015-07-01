#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/

scriptName "ac_init_server";

REQUIRE_SERVER(nil);
COMPILE_INIT;

_dir = "CustomAntiHack";
COMPILE("fn_logScript",            "ac_fnc_logScript");
COMPILE("fn_log",                  "ac_fnc_log");
COMPILE("fn_adminRequest",         "ac_fnc_adminRequest");
COMPILE("fn_MPexec",               "ac_fnc_MPexec");
COMPILE("fn_getAdmins",            "ac_fnc_getAdmins");
COMPILE("fn_filterMP",             "ac_fnc_filterMP");
COMPILE("fn_inAllowedFunctions",   "ac_fnc_inAllowedFunctions");


_dir = "CustomAntiHack\basic_functions";
COMPILE("fn_strTok",               "ac_fnc_strTok");
COMPILE("fn_removeChar",           "ac_fnc_removeChar");
COMPILE("fn_findPlayerByUid",      "ac_fnc_findPlayerByUid");
COMPILE("fn_beginWith",            "ac_fnc_beginWith");
COMPILE("fn_beginWiths",           "ac_fnc_beginWiths");

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
