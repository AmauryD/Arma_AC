/*
By [utopia] Amaury
12/05/2015
*/

private ["_string","_return"];

_array = [_this,0,[],[]] call bis_fnc_param;
_string = [_this,1,"",[""]] call bis_fnc_param;
_return = false;

{
if([format["%1_fnc_",_x],_string] call ac_fnc_beginWith) exitWith {_return = true};
} count _array;

_return