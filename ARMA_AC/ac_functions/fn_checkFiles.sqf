#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
 
{
	if(loadFile _x != "") then {
		_message = format["%1 (%2) bad hack file : %3 (forcekicked)",name player,getplayeruid player,_x];
		[[RISK_HACK,"AC_BadFiles.log",_message],"AC_fnc_log",false,false] remoteExecCall ["AC_fnc_log",EXEC_SERVER];
		[FILES_ACTION] call ac_fnc_handleAction;
	};
}count (getArray (AC_CFG >> "badFiles"));