#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
REQUIRE_ADMIN;

private["_display","_other_menus"];
_display = findDisplay 1234564;
_other_menus = _display displayCtrl 2100;

[_other_menus] call ac_fnc_addMenusToList;
[_other_menus,"DATA","ac_console_menu"] call ac_fnc_lbDeleteAt;

_console_input = _display displayCtrl 1100;
_console_output = _display displayCtrl 1400;

_exec_local = _display displayCtrl 1600;
_exec_global = _display displayCtrl 1601;
_exec_server = _display displayCtrl 1602;
_copy_output = _display displayCtrl 1603;

_history_list = _display displayCtrl 1500;
_spawn_code = _display displayCtrl 2800;

_exec_local ctrlAddEventHandler ["ButtonClick",ac_fnc_execLocal];
_exec_global ctrlAddEventHandler ["ButtonClick",ac_fnc_execGlobal];
_exec_server ctrlAddEventHandler ["ButtonClick",ac_fnc_execServer];

_copy_output ctrlAddEventHandler ["ButtonClick",{_display = findDisplay 1234564;_console_output = _display displayCtrl 1400;copyToClipboard ctrlText _console_output;hintSilent "Copied to clipboard , only in SP."}];
_history_list ctrlAddEventHandler ["LBDblClick",{
	_display = findDisplay 1234564;
	_console_input = _display displayCtrl 1100;
	_text = (_this select 0) lbData (_this select 1);
	_history = profileNamespace getVariable "ac_console_history";
	_history deleteAt (_history find _text);
	_console_input ctrlSetText _text;
    _history pushBackUnique _text;
     profileNamespace setVariable ["ac_console_history",_history];
	[] call ac_fnc_refreshConsoleMenu;
}];

_history = profileNamespace getVariable ["ac_console_history",0];
if (_history isEqualTo 0) then {
    profileNamespace setVariable ["ac_console_history",[]];
};

[] call ac_fnc_refreshConsoleMenu;
