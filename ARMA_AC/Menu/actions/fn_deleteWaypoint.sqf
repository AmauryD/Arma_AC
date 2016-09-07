/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 1234566;

_waypoints_list = _display displayCtrl 1500;
_curWp = _waypoints_list lbText (lbCurSel _waypoints_list);

if(_curWp isEqualTo "") exitWith {hintSilent "Please select a waypoint"};

_waypoints = profileNamespace getVariable "ac_waypoints";

{
   if(_x select 0 isEqualTo _curWp) exitWith {
      _waypoints deleteAt _forEachIndex;
      _waypoints_list lbDelete _forEachIndex;
   };
}forEach _waypoints;

[] call ac_fnc_refreshMapMenu;
profileNamespace setVariable ["ac_waypoints",_waypoints];
hintSilent format ["Waypoint %1 deleted",_curWp];
