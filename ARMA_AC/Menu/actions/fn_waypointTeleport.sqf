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
      player setPos (_x select 1);
      hintSilent format["You have been teleported to %1",_x select 0];
      openMap false;
      ["ac_admin_menu"] spawn ac_fnc_changeMenu;
   };
}forEach _waypoints;

profileNamespace setVariable ["ac_waypoints",_waypoints];
