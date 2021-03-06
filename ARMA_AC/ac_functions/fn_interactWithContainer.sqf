#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private "_allowed_weapons";
_container = param [0,objNull,[objNull]];
_take = param [1,"",[""]];

if(!isClass (configFile >> "cfgWeapons" >> _take)) exitWith {};

_allowed_weapons = (getArray (AC_CFG >> "allowed_Weapons")) apply {tolower _x};

if !((tolower _take) in _allowed_weapons) then {
	_message = format["%1 player with uid %2 has taken an illegal weapon %3 in a container or weapon holder",name player,getplayeruid player,_take];
	[RISK_HIGH,"AC_Containers.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
    player removeWeapon _take;
    false
};

true
