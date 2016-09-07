#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/

_display = findDisplay 1234564;
_console_input = _display displayCtrl 1100;
_history_list = _display displayCtrl 1500;

_text = ctrlText _console_input;

if(_text isEqualTo "") exitWith {hintSilent "No code to execute."};

_code = compile _text;
_result = _code remoteExec ["bis_fnc_call", EXEC_GLOBAL];

_history = profileNamespace getVariable "ac_console_history";
_history pushBackUnique _text;
profileNamespace setVariable ["ac_console_history",_history];
[] call ac_fnc_refreshConsoleMenu;


if(isNil "_result") then {
	hintSilent "Global execution failed (MP config ?)";
};