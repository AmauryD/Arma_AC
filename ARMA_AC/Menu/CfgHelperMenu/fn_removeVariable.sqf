/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;

_display = findDisplay 12341;
_allowed_variables_list = _display displayCtrl 1504;

_val = ["Enter the name of the variable",_display] call ac_fnc_editDialog;
if(_val isEqualTo "") exitWith {};

for "_i" from 0 to lbSize _allowed_variables_list do {
	_text = _allowed_variables_list lbData _i;
	if(_text isEqualTo _val) then {
	["variables_allowed",_text] call ac_fnc_removeFromConfig;
	_allowed_variables_list lbDelete _i;
	[format["Variable %1 has been removed",_text]] call ac_fnc_logCfg;
    };
};
