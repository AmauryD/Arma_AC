#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;

_display = findDisplay 12341;
_bad_files_list = _display displayCtrl 1501;

_val = ["Enter the bad file name",_display] call ac_fnc_editDialog;
if(_val isEqualTo "") exitWith {};
if(_val find "." isEqualTo -1) exitWith {hintSilent "The file needs to have a type (.sqf,.hpp,...)"};
 
["badFiles",_val] call ac_fnc_setToConfig;
_index = _bad_files_list lbAdd _val;
_bad_files_list lbSetData [_index,_val];
[format["Bad File %1 has been added",_val]] call ac_fnc_logCfg;