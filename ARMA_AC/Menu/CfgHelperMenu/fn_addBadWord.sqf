#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;

_display = findDisplay 12341;
_bad_words_list = _display displayCtrl 1518;

_val = ["Enter the bad word",_display] call ac_fnc_editDialog;
if(_val isEqualTo "") exitWith {};
if(_val find " " > 0) exitWith {hintSilent "Please enter only words , no sentences."};

["badWords",_val] call ac_fnc_setToConfig;

_index = _bad_words_list lbAdd _val;
_bad_words_list lbSetData [_index,_val];  
[format["Bad Word '%1' has been added",_val]] call ac_fnc_logCfg;   

lbSort _bad_words_list;