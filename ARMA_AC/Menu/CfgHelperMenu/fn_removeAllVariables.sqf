/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_allowed_variables_list = _display displayCtrl 1504;

for "_i" from 0 to lbSize _allowed_variables_list do {
	_text = _allowed_variables_list lbData _i;
	["variables_allowed",_text] call ac_fnc_removeFromConfig;
};

["All variables were removed"] call ac_fnc_logCfg;

lbClear _allowed_variables_list;

[] call ac_fnc_fillVariablesList;