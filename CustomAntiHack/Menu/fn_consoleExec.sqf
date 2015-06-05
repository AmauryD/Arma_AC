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

if(_code == "") exitWith {hintSilent "No text"};
call compile _code;
profileNamespace setVariable ["ac_lastExecs",((profileNamespace getVariable ["ac_lastExecs",[]]) + [_code])];
saveProfileNamespace;
[2] call ac_fnc_update;