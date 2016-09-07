/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_allowed_weapons_list =  _display displayCtrl 1500;

for "_i" from 0 to lbSize _allowed_weapons_list do {
	_text = _allowed_weapons_list lbData _i;
	["allowed_Weapons",_text] call ac_fnc_removeFromConfig;
};
["All weapons were removed"] call ac_fnc_logCfg;
lbClear _allowed_weapons_list;

[] call ac_fnc_fillWeaponsList;