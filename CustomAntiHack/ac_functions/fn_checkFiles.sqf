#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/
 
if(!FILES_CHECK) exitWith {};

{
	if(loadFile _x != "") then {
		_message = format["%1 (%2) bad hack file : %3 (forcekicked)",name player,getplayeruid player,_x];
		[[RISK_HACK,"AC_BadFiles.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
		DOCRASH;
	};
}count (getArray (AC_CFG >> "badFiles"));