#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/
_take = _this select 2;
if(!isClass (configFile >> "cfgWeapons" >> _take)) exitWith {};

if(!(_take in (getArray (AC_CFG >> "allowed_Weapons")))) then {
	_message = format["%1 player with uid %2 has taken an illegal weapon %3 in a container or weapon holder",name player,getplayeruid player,_take];
	[[RISK_HIGH,"AC_Containers.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
	player removeWeapon _take;
};

