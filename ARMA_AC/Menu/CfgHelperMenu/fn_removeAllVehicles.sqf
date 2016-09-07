/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_allowed_vehicles_list =  _display displayCtrl 1503;

for "_i" from 0 to lbSize _allowed_vehicles_list do {
	_text = _allowed_vehicles_list lbData _i;
	["allowedVehicles",_text] call ac_fnc_removeFromConfig;
};
["All vehicles were removed"] call ac_fnc_logCfg;
lbClear _allowed_vehicles_list;

[] call ac_fnc_fillVehiclesList;