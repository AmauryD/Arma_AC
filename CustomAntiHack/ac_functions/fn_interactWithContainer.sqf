#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/
private "_allowedWeapons";
_container = param [0,objNull];
_take = param [1,""];
if(!isClass (configFile >> "cfgWeapons" >> _take)) exitWith {};

_allowedWeapons = [];
{_allowedWeapons pushBack (tolower _x)}foreach getArray (AC_CFG >> "allowed_Weapons");

if(!((tolower _take) in _allowedWeapons)) then {
	_message = format["%1 player with uid %2 has taken an illegal weapon %3 in a container or weapon holder",name player,getplayeruid player,_take];
	[RISK_HIGH,"AC_Containers.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
    player removeWeapon _take;
    false
};

