/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
params [["_array",[],[[]]],["_string","",[""]],"_return"];
_return = false;

{
if([format["%1_fnc_",_x],_string] call ac_fnc_beginWith) exitWith {_return = true};
} count _array;

_return