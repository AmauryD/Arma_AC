/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_allowed_vehicles_list =  _display displayCtrl 1503;
_vehicles_list = _display displayCtrl 2102;

_vehicle = _vehicles_list lbData (lbCurSel _vehicles_list);

if(_vehicle isEqualTo "") exitWith {};
 
["allowedVehicles",_vehicle] call ac_fnc_setToConfig;
[_vehicles_list,"DATA",_vehicle] call ac_fnc_lbDeleteAt;

_vehicleName = getText (configFile >> "CfgVehicles" >> _vehicle >> "displayName");
_vehiclePicture = getText (configFile >> "CfgVehicles" >> _vehicle >> "picture");

_index = _allowed_vehicles_list lbAdd _vehicleName;
_allowed_vehicles_list lbSetData [_index,_vehicle];
_allowed_vehicles_list lbSetPicture [_index,_vehiclePicture];
_allowed_vehicles_list lbSetTooltip [_index,_vehicle];

[format["Vehicle %1 has been added",_vehicleName]] call ac_fnc_logCfg;

lbSort _allowed_vehicles_list;