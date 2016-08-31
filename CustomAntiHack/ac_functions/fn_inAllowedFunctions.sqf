/*
By [utopia] Amaury
12/05/2015
*/
params [["_array",[],[[]]],["_string","",[""]],"_return"];
_return = false;

{
if([format["%1_fnc_",_x],_string] call ac_fnc_beginWith) exitWith {_return = true};
} count _array;

_return