#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
REQUIRE_ADMIN;

_display = findDisplay 1234566;
_waypoints_list = _display displayCtrl 1500;

_waypoints_teleport = _display displayCtrl 1600;
_waypoints_add = _display displayCtrl 1601;
_waypoints_delete = _display displayCtrl 1603;

if !(profileNamespace getVariable "ac_waypoints" isEqualType []) then {
    profileNamespace setVariable ["ac_waypoints",[]];
};

[] call ac_fnc_refreshMapMenu;

_waypoints_teleport ctrlAddEventHandler ["ButtonClick",ac_fnc_waypointTeleport];
_waypoints_add ctrlAddEventHandler ["ButtonClick",ac_fnc_addWaypoint];
_waypoints_delete ctrlAddEventHandler ["ButtonClick",ac_fnc_deleteWaypoint];

["ac_teleport", "onMapSingleClick", {
	if(_shift && !_alt) then {
		["ac_teleport", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
		vehicle player setPos _pos;
		openMap false;
		["ac_admin_menu"] spawn ac_fnc_changeMenu;
	};
}] call BIS_fnc_addStackedEventHandler;

waitUntil {!visibleMap};
{
    if((_x select 0) in ["ac_teleport","ac_add_waypoint"]) then {
        [_x select 0, "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
    };
}foreach (missionNameSpace getVariable "BIS_stackedEventHandlers_onMapSingleClick");

uisleep 0.1;

if(!isNull _display) then {
    ["ac_admin_menu"] spawn ac_fnc_changeMenu;
};
