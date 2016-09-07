#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : init server
*****************************************************************************************/
REQUIRE_SERVER;
scriptName "ac_init_server";

[] call compile preprocessFileLineNumbers (AC_FOLDER + "\initServerFunctions.sqf");

_version = call compile ("aclogger" callExtension "version");
if(isNil "_version") then {
	diag_log "=======================================";
	diag_log "aclogger is not present on the server , cheaters will not be logged in aclogger folder.";
	diag_log "=======================================";
}else{
	diag_log format["aclogger running in version %1",_version];
};

ac_logs = [];