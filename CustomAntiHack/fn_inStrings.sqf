#include "macros.h"
/*
By [utopia] Amaury
21/05/2015
*/
private ["_string","_return"];

_array = [_this,0,[],[]] call bis_fnc_param;
_string = [_this,1,"",[""]] call bis_fnc_param;
_return = false;

{
if([_x,_string] call BIS_fnc_inString) exitWith {_return = true};
} count _array;

_return