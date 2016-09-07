/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;
private ["_display","_val","_text","_displays_list","_allowed_displays_list"];

_display = findDisplay 12341;
_displays_list = _display displayCtrl 1506;
_allowed_displays_list = _display displayCtrl 1505;    

_val = ["Enter the display ID",_display] call ac_fnc_editDialog;
if(_val isEqualTo "") exitWith {};
_val = parseNumber _val;
if !(_val isEqualType 0) exitWith {hint "please enter a number (display ID)"};

["allowedDisplays",_val] call ac_fnc_setToConfig;
[_displays_list,"VALUE",_val] call ac_fnc_lbDeleteAt;
_index = _allowed_displays_list lbAdd str _val;
_allowed_displays_list lbSetValue [_index,_val];     

[format["Display %1 has been added",_val]] call ac_fnc_logCfg;

lbSort _allowed_displays_list;