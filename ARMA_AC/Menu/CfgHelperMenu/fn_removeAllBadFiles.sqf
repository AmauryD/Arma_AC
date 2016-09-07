/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_bad_files_list = _display displayCtrl 1501;

for "_i" from 0 to lbSize _bad_files_list do {
	_text = _bad_files_list lbData _i;
	["badFiles",_text] call ac_fnc_removeFromConfig;
};

["All files were removed"] call ac_fnc_logCfg;

lbClear _bad_files_list;