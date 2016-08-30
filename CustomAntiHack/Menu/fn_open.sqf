#include "macros.h"
#define ADD_TAB(NAME) _index = _modeCb lbAdd NAME;_modeCb lbSetValue [_index,_index]
#define ADD_TAB_SPAWN(NAME,TYPE) _index = _vehicleListType lbAdd NAME;_vehicleListType lbSetData [_index,TYPE]
#define ADD_TAB_NAMESPACE(NAMESPACETYPE) _index = _acloggerNamespaceType lbAdd NAMESPACETYPE;_acloggerNamespaceType lbSetData [_index,NAMESPACETYPE]
/*
By [utopia] Amaury
14/05/2015
*/
REQUIRE_ADMIN;
REQUIRE_MENU_CLOSED;

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
_vehList = _display displayCtrl 12353;
_vehicleListType = _display displayCtrl 12354;
_spawnedList = _display displayCtrl 12356;
_acloggerPresentText = _display displayCtrl 12359;
_acloggerNamespaceType = _display displayCtrl 12361;

ADD_TAB("Logs");
ADD_TAB("Admin");
ADD_TAB("Console");
ADD_TAB("Options");
ADD_TAB("SpawnMenu");
ADD_TAB("Aclogger");
ADD_TAB("ACconfig view");

ADD_TAB_NAMESPACE("missionNamespace");
ADD_TAB_NAMESPACE("parsingNamespace");
ADD_TAB_NAMESPACE("uiNamespace");
ADD_TAB_NAMESPACE("profileNamespace");

ADD_TAB_SPAWN("Tanks","Tank");
ADD_TAB_SPAWN("Cars","Car");
ADD_TAB_SPAWN("Helicopters","Helicopter");
ADD_TAB_SPAWN("Planes","Plane");
ADD_TAB_SPAWN("Ships","Ship");
ADD_TAB_SPAWN("Structures","Building");
ADD_TAB_SPAWN("Ammoboxes","ReammoBox_F");
ADD_TAB_SPAWN("Weapons","Weapon_Base_F");
ADD_TAB_SPAWN("Items","Items_base_F");
ADD_TAB_SPAWN("Bags","Bag_Base");

_acloggerPresentText ctrlSetText format["aclogger is %1 in this machine (%2)",
if(!isnil {call compile ("aclogger" callExtension "version")}) then {"PRESENT"}else{"NOT PRESENT"},
if(isServer) then {"SERVER"}else{"CLIENT"}];

_filterLowLogs cbSetChecked (profileNamespace getVariable ["showlowlogs",false]);
_showMessages cbSetChecked (profileNamespace getVariable ["showMessages",false]);

_vehList ctrlAddEventHandler["LBDblClick",ac_fnc_onSpawnClick];
_spawnedList ctrlAddEventHandler["LBDblClick",ac_fnc_onSpawnedClick];
_vehicleListType ctrlAddEventHandler["LBSelChanged",ac_fnc_onSpawnTypeChanged];
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