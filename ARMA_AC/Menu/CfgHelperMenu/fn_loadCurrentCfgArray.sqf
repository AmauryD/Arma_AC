#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_display","_enable_ac_check","_enable_debug_check","_display_check","_holders_check","_variables_check","_files_check","_chat_check","_ip_check","_url_check",
"_adminsList","_allowed_weapons_list","_allowed_vehicles_list","_bad_words_list","_allowed_displays","_allowed_variables_list","_enabled","_debug","_display_check","_vehicles_check","_weaponHolder_check",
"_variables_check","_files_check","_chat_check","_chat_check_ip","_chat_check_url"];

_display = findDisplay 12341;

_enable_ac_check_c = _display displayCtrl 2800;
_enable_debug_check_c = _display displayCtrl 2801;
_display_check_c = _display displayCtrl 2802;
_vehicles_check_c = _display displayCtrl 2808;
_holders_check_c = _display displayCtrl 2804;
_variables_check_c = _display displayCtrl 2805;
_files_check_c = _display displayCtrl 2806;
_chat_check_c = _display displayCtrl 2807;

_ip_check_c = _display displayCtrl 2808;
_url_check_c = _display displayCtrl 2809;

_allowed_weapons_list =  _display displayCtrl 1500;
_allowed_vehicles_list =  _display displayCtrl 1503;
_bad_files_list = _display displayCtrl 1501;
_allowed_variables_list = _display displayCtrl 1504;
_adminsList = _display displayCtrl 1502;
_bad_words_list = _display displayCtrl 1518;
_allowed_displays_list = _display displayCtrl 1505;
_allowed_tags_list = _display displayCtrl 1508;
_forbidden_tags_list = _display displayCtrl 1509;
_forbidden_variables_list = _display displayCtrl 1510;

_displays_list = _display displayCtrl 1506;
_w_list = _display displayCtrl 2100;
_vehicles_list = _display displayCtrl 2102;
_variables_list = _display displayCtrl 2103;

["Loading your current config file , please wait ..."] call ac_fnc_logCfg;

_enabled = ["enabled"] call ac_fnc_getFromConfig;
_debug = ["debug"] call ac_fnc_getFromConfig;
_display_check = ["display_check"] call ac_fnc_getFromConfig;
_vehicles_check = ["vehicles_check"] call ac_fnc_getFromConfig;
_weaponHolder_check = ["weaponHolder_check"] call ac_fnc_getFromConfig;
_variables_check = ["variables_check"] call ac_fnc_getFromConfig;
_files_check = ["files_check"] call ac_fnc_getFromConfig;
_chat_check = ["chat_check"] call ac_fnc_getFromConfig;
_chat_check_ip = ["chat_check_ip"] call ac_fnc_getFromConfig;
_chat_check_url = ["chat_check_url"] call ac_fnc_getFromConfig;
_admins = ["admins"] call ac_fnc_getFromConfig;
_badFiles = ["badFiles"] call ac_fnc_getFromConfig;
_badWords = ["badWords"] call ac_fnc_getFromConfig;
_allowed_weapons = ["allowed_Weapons"] call ac_fnc_getFromConfig;
_allowed_vehicles = ["allowedVehicles"] call ac_fnc_getFromConfig;
_allowed_displays = ["allowedDisplays"] call ac_fnc_getFromConfig;
_tags_allowed = ["variables_tags_allowed"] call ac_fnc_getFromConfig;
_tags_forbidden = ["variables_tags_forbidden"] call ac_fnc_getFromConfig;
_variables_forbidden = ["variables_forbidden"] call ac_fnc_getFromConfig;
_variables_allowed = ["variables_allowed"] call ac_fnc_getFromConfig;

lbClear _allowed_weapons_list;
lbClear _allowed_displays_list;
lbClear _allowed_vehicles_list;
lbClear _allowed_variables_list;
lbClear _bad_words_list;
lbClear _bad_files_list;
lbClear _adminsList;
lbClear _allowed_tags_list;
lbClear _forbidden_tags_list;
lbClear _forbidden_variables_list;

[] call ac_fnc_fillLists;

_enable_ac_check_c cbSetChecked _enabled;
_enable_debug_check_c cbSetChecked _debug;
_display_check_c cbSetChecked _display_check;
_vehicles_check_c cbSetChecked _vehicles_check;
_holders_check_c cbSetChecked _weaponHolder_check;
_variables_check_c cbSetChecked _variables_check;
_files_check_c cbSetChecked _files_check;
_chat_check_c cbSetChecked _chat_check;
_ip_check_c cbSetChecked _chat_check_ip;
_url_check_c cbSetChecked _chat_check_url;

{
   _index = _adminsList lbAdd _x;
   _adminsList lbSetData [_index,_x];
}forEach _admins;

{
   _index = _bad_files_list lbAdd _x;
   _bad_files_list lbSetData [_index,_x];
}forEach _badFiles;

{
   _index = _bad_words_list lbAdd _x;
   _bad_words_list lbSetData [_index,_x];
}forEach _badWords;

{
	_name = getText (configFile >> "CfgWeapons" >> _x >> "displayName");
    _picture = getText (configFile >> "CfgWeapons" >> _x >> "picture");

    _index = _allowed_weapons_list lbAdd _name; 
    _allowed_weapons_list lbSetData [_index,_x];
    _allowed_weapons_list lbSetTooltip [_index,_x];
    _allowed_weapons_list lbSetPicture [_index,_picture];
    [_w_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _allowed_weapons;

{
  ["variables_forbidden",_x] call ac_fnc_setToConfig;
   _index = _forbidden_variables_list lbAdd _x;
   _forbidden_variables_list lbSetData [_index,_x];
   [_variables_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _variables_forbidden;

{
  ["variables_tags_forbidden",_x] call ac_fnc_setToConfig;
   _index = _forbidden_tags_list lbAdd _x;
   _forbidden_tags_list lbSetData [_index,_x];
   [_variables_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _tags_forbidden;

{
  ["variables_tags_allowed",_x] call ac_fnc_setToConfig;
   _index = _allowed_tags_list lbAdd _x;
   _allowed_tags_list lbSetData [_index,_x];
   [_variables_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _tags_allowed;

{
	_name = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    _picture = getText (configFile >> "CfgVehicles" >> _x >> "picture");

     _index = _allowed_vehicles_list lbAdd _name;
    _allowed_vehicles_list lbSetData [_index,_x];
    _allowed_vehicles_list lbSetPicture [_index,_picture];
    _allowed_vehicles_list lbSetTooltip [_index,_x];
    [_vehicles_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _allowed_vehicles;

{
   _index = _allowed_variables_list lbAdd _x;
   _allowed_variables_list lbSetData [_index,_x];
   [_variables_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _variables_allowed;

{
  private "_display";
  _display = _x;

  { 
    _id = getNumber (_x >> "idd");
    if(_id == _display) then {
    _index = _allowed_displays_list lbAdd configName _x;
    _allowed_displays_list lbSetValue [_index,_id];
    [_displays_list,"VALUE",_id] call ac_fnc_lbDeleteAt;
    };
  }forEach ("getNumber (_x >> 'idd') > 0" configClasses configFile);
  { 
    _id = getNumber (_x >> "idd");
    if(_id == _display) then {
    _index = _allowed_displays_list lbAdd configName _x;
    _allowed_displays_list lbSetValue [_index,_id];
    [_displays_list,"VALUE",_id] call ac_fnc_lbDeleteAt;
    };
  }forEach ("getNumber (_x >> 'idd') > 0" configClasses missionConfigFile);
}forEach _allowed_displays;

lbSort _allowed_weapons_list;
lbSort _allowed_displays_list;
lbSort _allowed_vehicles_list;
lbSort _bad_words_list;
lbSort _allowed_variables_list;
lbSort _bad_files_list;
lbSort _adminsList;
lbSort _allowed_tags_list;
lbSort _forbidden_tags_list;
lbSort _forbidden_variables_list;

["Current config file loaded."] call ac_fnc_logCfg;