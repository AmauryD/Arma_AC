#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;

_mode = param [0,0,[0]];

switch (_mode) do { 
	case 1 : {
    _display = findDisplay 12341;
    _admin_input = _display displayCtrl 1400;
    _adminsList = _display displayCtrl 1502;
    
    _val = ["Enter the admin UID",_display] call ac_fnc_editDialog;
    if(_val isEqualTo "") exitWith {};
    if(parseNumber _val isEqualTo 0) exitWith {hintSilent "Please enter a number"};

    _index = _adminsList lbAdd _val;
    _adminsList lbSetData [_index,_val];
    ["admins",ctrlText _admin_input] call ac_fnc_setToConfig;
    [format["Admin %1 has been added",_val]] call ac_fnc_logCfg;
    _admin_input ctrlSetText "";
    }; 
	case 2 : {
    _display = findDisplay 12341;
    _adminsList = _display displayCtrl 1502;
    _pList = _display displayCtrl 2101;
    
    _uid = _pList lbData lbCurSel _pList;
    if !(_uid isEqualTo "") then {
        _index = _adminsList lbAdd _uid;
        _adminsList lbSetData [_index,_uid];
    };

    ["admins",_uid] call ac_fnc_setToConfig;
    [format["Admin %1 has been added",_uid]] call ac_fnc_logCfg;
    _admin_input ctrlSetText "";
    }; 
};