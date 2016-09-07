#include "macros.h"
/****************************************************************************************
@created     : 7 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_string","_return"];

_array = [_this,0,[],[]] call bis_fnc_param;
_string = [_this,1,"",[""]] call bis_fnc_param;
_return = false;

{if([_x,_string] call ac_fnc_beginWith) exitWith {_return = true};} foreach _array;

_return