/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_vehicles_list = _display displayCtrl 2102;

lbClear _vehicles_list;

{
  if(configName _x isKindOf "LandVehicle" || configName _x isKindOf "Air") then {
    _name = getText (_x >> "displayName");
    _picture = getText (_x >> "picture");
    if(_name != "" &&  _picture != "") then {
    _index = _vehicles_list lbAdd _name;
    _vehicles_list lbSetPicture [_index, _picture];
    _vehicles_list lbSetData [_index,configName _x];
    };
  };
}foreach ("true" configClasses (configfile >> "CfgVehicles"));
lbSort _vehicles_list;