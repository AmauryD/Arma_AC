#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/
private ["_uid","_return"];
_uid = [_this,0,"0",[""]] call bis_fnc_param;
_return = objNull;

{
   if(getPlayerUID _x == _uid) exitWith {
   _return = _x;
   };
} forEach playableUnits;

_return