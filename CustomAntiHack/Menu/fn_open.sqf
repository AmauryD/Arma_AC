#include "macros.h"
/*
By [utopia] Amaury
14/05/2015
*/
if(!(getplayeruid player in (getArray (AC_CFG >> "admins")))) exitWith {DOCRASH};
disableSerialization;
createDialog "ac_menu";

_display = findDisplay 12340;
_modeCb = _display displayCtrl 12343;
_logs = _display displayCtrl 12342;
_plist = _display displayCtrl 12341;
_filterLowLogs = _display displayCtrl 12345;
_Aactions = _display displayCtrl 12347;
_consoleList = _display displayCtrl 12350;
_showMessages = _display displayCtrl 12351;

_modeCb lbAdd "Logs";
_modeCb lbAdd "Admin";
_modeCb lbAdd "Console";
_modeCb lbAdd "Options";

_modeCb lbSetValue [0,0];
_modeCb lbSetValue [1,1];
_modeCb lbSetValue [2,2];
_modeCb lbSetValue [3,3];

_filterLowLogs cbSetChecked (profileNamespace getVariable ["showlowlogs",false]);
_showMessages cbSetChecked (profileNamespace getVariable ["showMessages",false]);

_modeCb ctrlAddEventHandler["LBSelChanged",ac_fnc_changeMenu];
_logs ctrlAddEventHandler["LBSelChanged",ac_fnc_onLogSelChanged];
_plist ctrlAddEventHandler["LBSelChanged",ac_fnc_onModeSelChanged];
_Aactions ctrlAddEventHandler["LBDblClick",ac_fnc_onAction];
_consoleList ctrlAddEventHandler["LBDblClick",ac_fnc_copyConsoleLBSel];
_filterLowLogs ctrlAddEventHandler["CheckedChanged",{
    profileNamespace setVariable ["showlowlogs",(!(profileNamespace getVariable ["showlowlogs",false]))];
}];
_showMessages ctrlAddEventHandler["CheckedChanged",{
    profileNamespace setVariable ["showMessages",(!(profileNamespace getVariable ["showMessages",false]))];
    if(profileNamespace getVariable ["showMessages",false]) then {
    hint "Messages are now hinted in this style.";
    }else{
    ["Messages are now hinted in this style."] spawn bis_fnc_dynamicText;
    };
}];

[0] call ac_fnc_update;