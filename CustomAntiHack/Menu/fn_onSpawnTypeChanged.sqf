#define AIR 1
#define LAND 0

private "_vehList";

disableSerialization;
_list = _this select 0;
_index = _this select 1;

_display = findDisplay 12340;
_vehList = _display displayCtrl 12353;

lbClear _vehList;

_type = _list lbData _index;
_search = format ["(configName _x) isKindOf '%1' && getNumber (_x >> 'scope') == 2",_type];

{
  _name = getText (_x >> "displayName");
  _index = _vehList lbAdd _name;
  _vehList lbSetPicture [_index, getText (_x >> "picture")];
  _vehList lbSetData [_index,configName _x];
}foreach (_search configClasses (configfile >> "CfgVehicles"));

