#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
 
if(!FILES_CHECK) exitWith {};

{
	if(loadFile _x != "") then {
		_message = format["%1 (%2) bad hack file : %3 (forcekicked)",name player,getplayeruid player,_x];
		[[RISK_HACK,"AC_BadFiles.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
		DOCRASH;
	};
}count (getArray (AC_CFG >> "badFiles"));