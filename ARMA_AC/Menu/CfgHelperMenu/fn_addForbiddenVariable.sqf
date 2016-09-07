#include "macros.h"
/****************************************************************************************
@created     : 07 september 2016
@modified    : 07 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;

_display = findDisplay 12341;
_bad_vars_list = _display displayCtrl 1510;

_val = ["Enter the bad variable name",_display] call ac_fnc_editDialog;
if(_val isEqualTo "") exitWith {};
 
["variables_forbidden",_val] call ac_fnc_setToConfig;
_index = _bad_vars_list lbAdd _val;
_bad_vars_list lbSetData [_index,_val];
[format["Bad variable %1 has been added",_val]] call ac_fnc_logCfg;