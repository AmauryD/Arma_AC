/****************************************************************************************
@created     : 07 september 2016
@modified    : 07 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_wList = _display displayCtrl 2100;


lbClear _wList;

{
  _name = getText (_x >> "displayName");
  _picture = getText (_x >> "picture");
  if(_name != "" && _picture != "") then {
  _index = _wList lbAdd _name;
  _wList lbSetPicture [_index, _picture];
  _wList lbSetData [_index,configName _x];
  };
}foreach ("true" configClasses (configfile >> "CfgWeapons"));

lbSort _wList;
