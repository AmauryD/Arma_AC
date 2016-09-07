#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 1234564;
_console_input = _display displayCtrl 1100;
_console_output = _display displayCtrl 1400;
_spawn_code = _display displayCtrl 2800;
_history_list = _display displayCtrl 1500;

_text = ctrlText _console_input;

if(_text isEqualTo "") exitWith {hintSilent "No code to execute."};


_console_output ctrlSetText "NOTHING";
_code = compile _text;

_result = "";

if(cbChecked _spawn_code) then {
   _result = [] spawn _code;
}else{
   _result = [] call _code;
};

_history = profileNamespace getVariable "ac_console_history";
_history pushBackUnique _text;
profileNamespace setVariable ["ac_console_history",_history];
[] call ac_fnc_refreshConsoleMenu;

if(_result isEqualTo "" || isNil "_result") then {_result = "NOTHING"};

_console_output ctrlSetText str _result;