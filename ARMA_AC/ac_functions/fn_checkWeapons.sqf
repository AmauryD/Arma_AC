#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;

private "_allowedWeapons";
_allowedWeapons = param [0,[],[[]]];

{
 if(!((tolower _x) in _allowedWeapons)) then {
 _message = format["%1 (%2) : bad weapon %3.",name player,getplayeruid player,_x];
 [RISK_HIGH,"AC_BadWeapons.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
 player removeWeapon _x;
 [WEAPONS_ACTION] call ac_fnc_handleAction;
 };
}count weapons player;