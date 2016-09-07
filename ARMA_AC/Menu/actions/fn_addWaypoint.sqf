/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
hintSilent "ALT + SHIFT + CLICK to add waypoint";
["ac_add_waypoint", "onMapSingleClick", {
    if(_alt && _shift) then {
		_pos spawn {
		    ["ac_add_waypoint", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
			_result = ["Choose the waypoint name"] call ac_fnc_editDialog;
			if(_result isEqualTo "") exitWith {hintSilent "Canceled";};
			_waypoints = profileNamespace getVariable "ac_waypoints";
			_waypoints pushBackUnique [_result,_this];
			profileNamespace setVariable ["ac_waypoints",_waypoints];
			["ac_map_menu"] spawn ac_fnc_changeMenu;
		};
    };
}] call BIS_fnc_addStackedEventHandler;