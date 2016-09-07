/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;
_display = findDisplay 1234566;
_waypoints_list = _display displayCtrl 1500;

{if(["ac_waypoint_",_x] call ac_fnc_beginWith) then {deleteMarkerLocal _x;};}forEach allMapMarkers;
lbClear _waypoints_list;
{
	_name = _x select 0;
    _position = _x select 1;

    _index = _waypoints_list lbAdd _name;
    _waypoints_list lbSetData [_index,str _position];

    _m = createMarkerLocal [format["ac_waypoint_%1",_name],_position];
    _m setMarkerTypeLocal "waypoint";
    _m setMarkerColorLocal "colorBlue";
    _m setMarkerTextLocal format["WAYPOINT : %1",_name];

}forEach (profileNamespace getVariable "ac_waypoints");
lbSort _waypoints_list;