#include "macros.h"
#define intToBool(arg) (if(arg isEqualTo 1) then {true}else{false})
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_display","_enable_ac_check_c","_enable_debug_check_c","_display_check_c","_holders_check_c","_variables_check_c","_files_check_c","_chat_check","_ip_check_c","_url_check_c",
"_adminsList","_allowed_weapons_list","_allowed_vehicles_list","_bad_words_list","_allowed_displays","_allowed_variables_list","_enabled","_debug","_display_check","_vehicles_check","_weaponHolder_check",
"_variables_check","_files_check","_chat_check","_chat_check_ip","_chat_check_url"];

["Config File Loading ... Please wait"] call ac_fnc_logCfg;

_enabled = getNumber (AC_CFG >> "enabled");
_debug = getNumber (AC_CFG >> "debug");
_display_check = getNumber (AC_CFG >> "display_check");
_vehicles_check = getNumber (AC_CFG >> "vehicles_check");
_weaponHolder_check = getNumber (AC_CFG >> "weaponHolder_check");
_variables_check = getNumber (AC_CFG >> "variables_check");
_files_check = getNumber (AC_CFG >> "files_check");
_chat_check = getNumber (AC_CFG >> "chat_check");

_chat_check_ip = getNumber (AC_CFG_CHAT >> "remove_ip");
_chat_check_url = getNumber (AC_CFG_CHAT >> "remove_url");

_admins = getArray (AC_CFG >> "admins");
_badFiles = getArray (AC_CFG >> "badFiles");
_badWords = getArray (AC_CFG_CHAT >> "badWords");

_allowed_weapons = getArray (AC_CFG >> "allowed_weapons");
_allowed_vehicles = getArray (AC_CFG >> "allowedVehicles");
_allowed_displays = getArray (AC_CFG >> "allowedDisplays");

_tags_allowed = getArray (AC_CFG_VARS >> "tags" >> "allowed");
_tags_forbidden = getArray (AC_CFG_VARS >> "tags" >> "forbidden");

_variables_forbidden = getArray (AC_CFG_VARS >> "variables" >> "forbidden");
_variables_allowed = getArray (AC_CFG_VARS >> "variables" >> "allowed");

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

[] call ac_fnc_newCfgArray;
[] call ac_fnc_fillLists;

_enable_ac_check_c cbSetChecked intToBool(_enabled);
_enable_debug_check_c cbSetChecked intToBool(_debug);
_display_check_c cbSetChecked intToBool(_display_check);
_vehicles_check_c cbSetChecked intToBool(_vehicles_check);
_holders_check_c cbSetChecked intToBool(_weaponHolder_check);
_variables_check_c cbSetChecked intToBool(_variables_check);
_files_check_c cbSetChecked intToBool(_files_check);
_chat_check_c cbSetChecked intToBool(_chat_check);
_ip_check_c cbSetChecked intToBool(_chat_check_ip);
_url_check_c cbSetChecked intToBool(_chat_check_url);

["enabled",intToBool(_enabled)] call ac_fnc_setToConfig;
["debug",intToBool(_debug)] call ac_fnc_setToConfig;
["display_check",intToBool(_display_check)] call ac_fnc_setToConfig;
["vehicles_check",intToBool(_vehicles_check)] call ac_fnc_setToConfig;
["weaponHolder_check",intToBool(_weaponHolder_check)] call ac_fnc_setToConfig;
["variables_check",intToBool(_variables_check)] call ac_fnc_setToConfig;
["files_check",intToBool(_files_check)] call ac_fnc_setToConfig;
["chat_check",intToBool(_chat_check)] call ac_fnc_setToConfig;
["chat_check_ip",intToBool(_chat_check_ip)] call ac_fnc_setToConfig;
["chat_check_url",intToBool(_chat_check_url)] call ac_fnc_setToConfig;

{
	["admins",_x] call ac_fnc_setToConfig;
   _index = _adminsList lbAdd _x;
   _adminsList lbSetData [_index,_x];
}forEach _admins;

{
	["badFiles",_x] call ac_fnc_setToConfig;
   _index = _bad_files_list lbAdd _x;
   _bad_files_list lbSetData [_index,_x];
}forEach _badFiles;

{
	["badWords",_x] call ac_fnc_setToConfig;
   _index = _bad_words_list lbAdd _x;
   _bad_words_list lbSetData [_index,_x];
}forEach _badWords;

{
	  _name = getText (configFile >> "CfgWeapons" >> _x >> "displayName");
    _picture = getText (configFile >> "CfgWeapons" >> _x >> "picture");

    ["allowed_Weapons",_x] call ac_fnc_setToConfig;

    _index = _allowed_weapons_list lbAdd _name; 
    _allowed_weapons_list lbSetData [_index,_x];
    _allowed_weapons_list lbSetTooltip [_index,_x];
    _allowed_weapons_list lbSetPicture [_index,_picture];
    [_w_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _allowed_weapons;

{
	  _name = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    _picture = getText (configFile >> "CfgVehicles" >> _x >> "picture");

    ["allowedVehicles",_x] call ac_fnc_setToConfig;

     _index = _allowed_vehicles_list lbAdd _name;
    _allowed_vehicles_list lbSetData [_index,_x];
    _allowed_vehicles_list lbSetPicture [_index,_picture];
    _allowed_vehicles_list lbSetTooltip [_index,_x];
    [_vehicles_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _allowed_vehicles;

{
	["variables_allowed",_x] call ac_fnc_setToConfig;
   _index = _allowed_variables_list lbAdd _x;
   _allowed_variables_list lbSetData [_index,_x];
   [_variables_list,"DATA",_x] call ac_fnc_lbDeleteAt;
}forEach _variables_allowed;

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
  private "_display";
  _display = _x;
	["allowedDisplays",_x] call ac_fnc_setToConfig;

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

["Your config file has been successFully imported"] call ac_fnc_logCfg;

