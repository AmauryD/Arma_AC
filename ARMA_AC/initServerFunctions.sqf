#include "macros.h"
/****************************************************************************************
@created     : 06 september 2016
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : init functions
*****************************************************************************************/
REQUIRE_SERVER;
COMPILE_INIT;

_dir = AC_FOLDER + "\ac_functions";
COMPILE("fn_logScript",            	 "ac_fnc_logScript");
COMPILE("fn_log",                  	 "ac_fnc_log");
COMPILE("fn_adminRequest",        	 "ac_fnc_adminRequest");
COMPILE("fn_getAdmins",           	 "ac_fnc_getAdmins");
COMPILE("fn_inAllowedFunctions",  	 "ac_fnc_inAllowedFunctions");

_dir = AC_FOLDER + "\basic_functions";
COMPILE("fn_strTok",              	 "ac_fnc_strTok");
COMPILE("fn_removeChar",          	 "ac_fnc_removeChar");
COMPILE("fn_findPlayerByUid",     	 "ac_fnc_findPlayerByUid");
COMPILE("fn_beginWith",           	 "ac_fnc_beginWith");
COMPILE("fn_beginWiths",         	 "ac_fnc_beginWiths");