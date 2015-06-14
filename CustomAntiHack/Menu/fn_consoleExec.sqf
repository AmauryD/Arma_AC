#include "macros.h"
/*
By [utopia] Amaury
14/05/2015
*/
if(!(getplayeruid player in (getArray (AC_CFG >> "admins")))) exitWith {DOCRASH};
disableSerialization;
_display = findDisplay 12340;
_codeInput = _display displayCtrl 12348;
_code = ctrlText _codeInput;
_consoleList = _display displayCtrl 12350;
_consoleResult = _display displayCtrl 12358;

if(_code == "") exitWith {hintSilent "No text"};
_result = call compile _code;
if(isnil "_result") then {_result = "NULL"};
_consoleResult ctrlSetText str _result;
_lastExecs = profileNamespace getVariable ["ac_lastExecs",[]];
if(!(_code in _lastExecs)) then {
profileNamespace setVariable ["ac_lastExecs",((profileNamespace getVariable ["ac_lastExecs",[]]) + [_code])];
};
[2] call ac_fnc_update;