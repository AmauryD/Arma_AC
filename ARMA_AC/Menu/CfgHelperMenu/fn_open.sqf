#include "macros.h"
#define parseBool(arg) (if(arg isEqualTo 1) then {true}else{false})
#define FALSE 0
#define TRUE 1
/****************************************************************************************
@created     : 01 september 2016
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
REQUIRE_ADMIN;

private ["_display","_enable_ac_check","_enable_debug_check","_display_check","_holders_check","_variables_check","_files_check","_chat_check","_ip_check","_url_check",
"_adminsList","_allowed_weapons_list","_allowed_vehicles_list","_bad_words_list","_allowed_displays","_allowed_variables_list","_vehicles_check"];

_display = findDisplay 12341;

_enable_ac_check = _display displayCtrl 2800;
_enable_debug_check = _display displayCtrl 2801;
_display_check = _display displayCtrl 2802;
_vehicles_check = _display displayCtrl 2808;
_holders_check = _display displayCtrl 2804;
_variables_check = _display displayCtrl 2805;
_files_check = _display displayCtrl 2806;
_chat_check = _display displayCtrl 2807;

_ip_check = _display displayCtrl 2808;
_url_check = _display displayCtrl 2809;

_adminsList = _display displayCtrl 1502;
_allowed_weapons_list =  _display displayCtrl 1500;
_allowed_vehicles_list =  _display displayCtrl 1503;
_bad_files_list = _display displayCtrl 1501;
_allowed_variables_list = _display displayCtrl 1504;
_allowed_displays = _display displayCtrl 1505;
_bad_words_list = _display displayCtrl 1518;
_allowed_tags_list = _display displayCtrl 1508;
_forbidden_tags_list = _display displayCtrl 1509;
_forbidden_variables_list = _display displayCtrl 1510;


_playersCbBox = _display displayCtrl 2101;
_displays_list = _display displayCtrl 1506;
_wList = _display displayCtrl 2100;
_vehicles_list = _display displayCtrl 2102;
_variables_list = _display displayCtrl 2103;

_add_bad_file_button = _display displayCtrl 1601;
_add_weapon_button = _display displayCtrl 1602;
_add_edit_button = _display displayCtrl 1603;
_add_vehicle_button = _display displayCtrl 1604;
_add_variable_combo_button = _display displayCtrl 1605;
_add_all_variables_button = _display displayCtrl 1606;
_variables_clear_button = _display displayCtrl 1607;
_variable_add_edit_button = _display displayCtrl 1608;
_remove_variable_button = _display displayCtrl 1609;
_remove_bad_files_button = _display displayCtrl 1610;
_remove_vehicles_button = _display displayCtrl 1611;
_remove_weapons_button = _display displayCtrl 1612;
_add_allowed_tag_btn=  _display displayCtrl 1613;
_add_forbidden_tag_btn= _display displayCtrl 1614;
_add_forbidden_var_btn = _display displayCtrl 1618;
_add_bad_word_btn= _display displayCtrl 1616;
_add_admin_combo_button = _display displayCtrl 1617;
_add_display_button = _display displayCtrl 1619;
_load_from_config_file = _display displayCtrl 1620;
_output_config = _display displayCtrl 1621;

[] call ac_fnc_fillLists;

if(isNil "ac_config_output") then {
	[] call ac_fnc_newCfgArray;
};

[] call ac_fnc_loadCurrentCfgArray;

_add_bad_file_button ctrlAddEventHandler ["ButtonClick",{[] spawn ac_fnc_addBadFile}];
_add_weapon_button ctrlAddEventHandler ["ButtonClick",ac_fnc_addWeapon];
_add_edit_button ctrlAddEventHandler ["ButtonClick",{[1] spawn ac_fnc_addAdmin}];
_add_vehicle_button ctrlAddEventHandler ["ButtonClick",ac_fnc_addVehicle];
_add_variable_combo_button ctrlAddEventHandler ["ButtonClick",{[1] call ac_fnc_addVariable}];
_add_all_variables_button ctrlAddEventHandler ["ButtonClick",{[2] call ac_fnc_addVariable}];
_variables_clear_button ctrlAddEventHandler ["ButtonClick",ac_fnc_removeAllVariables];
_variable_add_edit_button ctrlAddEventHandler ["ButtonClick",{[3] spawn ac_fnc_addVariable}];
_remove_variable_button ctrlAddEventHandler ["ButtonClick",{[] spawn ac_fnc_removeVariable}];
_remove_bad_files_button ctrlAddEventHandler ["ButtonClick",ac_fnc_removeAllBadFiles];
_remove_vehicles_button ctrlAddEventHandler ["ButtonClick",ac_fnc_removeAllVehicles];
_remove_weapons_button ctrlAddEventHandler ["ButtonClick",ac_fnc_removeAllWeapons];
_add_allowed_tag_btn ctrlAddEventHandler ["ButtonClick",{[] spawn ac_fnc_addAllowedTag}];
_add_forbidden_tag_btn ctrlAddEventHandler ["ButtonClick",{[] spawn ac_fnc_addForbiddenTag}];
_add_forbidden_var_btn ctrlAddEventHandler ["ButtonClick",{[] spawn ac_fnc_addForbiddenVariable}];
_add_bad_word_btn ctrlAddEventHandler ["ButtonClick",{[] spawn ac_fnc_addBadWord}];
_add_admin_combo_button ctrlAddEventHandler ["ButtonClick",{[2] call ac_fnc_addAdmin}];
_add_display_button ctrlAddEventHandler ["ButtonClick",{[] spawn ac_fnc_addDisplay}];
_load_from_config_file ctrlAddEventHandler ["ButtonClick",ac_fnc_loadFromConfig];
_output_config ctrlAddEventHandler ["ButtonClick",ac_fnc_outputConfig];

_enable_ac_check ctrlAddEventHandler["CheckedChanged",{["enabled",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_enable_debug_check ctrlAddEventHandler["CheckedChanged",{["debug",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_display_check ctrlAddEventHandler["CheckedChanged",{["display_check",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_vehicles_check ctrlAddEventHandler["CheckedChanged",{["vehicles_check",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_holders_check ctrlAddEventHandler["CheckedChanged",{["weaponHolder_check",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_variables_check ctrlAddEventHandler["CheckedChanged",{["variables_check",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_files_check ctrlAddEventHandler["CheckedChanged",{["files_check",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_chat_check ctrlAddEventHandler["CheckedChanged",{["chat_check",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_ip_check ctrlAddEventHandler["CheckedChanged",{["chat_check_ip",parseBool(_this select 1)] call ac_fnc_setToConfig}];
_url_check ctrlAddEventHandler["CheckedChanged",{["chat_check_url",parseBool(_this select 1)] call ac_fnc_setToConfig}];



_adminsList ctrlAddEventHandler["LBDblClick",{
["admins",(_this select 0) lbData (_this select 1)] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
}];

_bad_files_list ctrlAddEventHandler["LBDblClick",{
["badFiles",(_this select 0) lbData (_this select 1)] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
}];

_allowed_weapons_list ctrlAddEventHandler["LBDblClick",{
_display = findDisplay 12341;
_wList = _display displayCtrl 2100;
_value = (_this select 0) lbData (_this select 1);
_picture = (_this select 0) lbPicture (_this select 1);
_text = (_this select 0) lbText (_this select 1);
["allowed_Weapons",_value] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
_i = _wList lbAdd _text;
_wList lbSetData [_i,_value];
_wList lbSetPicture [_i,_picture];
lbSort _wList;
}];

_allowed_vehicles_list ctrlAddEventHandler["LBDblClick",{
_display = findDisplay 12341;
_vehicles_list = _display displayCtrl 2102;
_value = (_this select 0) lbData (_this select 1);
_text = (_this select 0) lbText (_this select 1);
_picture = (_this select 0) lbPicture (_this select 1);
["allowedVehicles",_value] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
_i = _vehicles_list lbAdd _text;
_vehicles_list lbSetData [_i,_value];
_vehicles_list lbSetPicture [_i,_picture];
lbSort _vehicles_list;
}];

_allowed_displays ctrlAddEventHandler["LBDblClick",{
_display = findDisplay 12341;
_displays_list = _display displayCtrl 1506;
_value = (_this select 0) lbValue (_this select 1);
_text = (_this select 0) lbText (_this select 1);
["allowedDisplays",_value] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
_i = _displays_list lbAdd _text;
_displays_list lbSetValue [_i,_value];
lbSort _displays_list;
}];

_allowed_variables_list ctrlAddEventHandler["LBDblClick",{
_display = findDisplay 12341;
_value = (_this select 0) lbData (_this select 1);
["variables_allowed",_value] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
_variables_list = _display displayCtrl 2103;
_i = _variables_list lbAdd _value;
_variables_list lbSetData [_i,_value];
lbSort _variables_list;
}];

_bad_words_list ctrlAddEventHandler["LBDblClick",{
["badWords",(_this select 0) lbValue (_this select 1)] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
}];

_displays_list ctrlAddEventHandler["LBDblClick",{
_display = findDisplay 12341;
_otherList = _display displayCtrl 1505;   
_value = (_this select 0) lbValue (_this select 1); 
["allowedDisplays",_value] call ac_fnc_setToConfig;
_i = _otherList lbAdd ((_this select 0) lbText (_this select 1));
_otherList lbSetValue [_i,_value];
[_this select 0,"VALUE",_value] call ac_fnc_lbDeleteAt;
lbSort _otherList;
}];

_allowed_tags_list ctrlAddEventHandler["LBDblClick",{
["variables_tags_allowed",(_this select 0) lbValue (_this select 1)] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
}];
_forbidden_variables_list ctrlAddEventHandler["LBDblClick",{
["variables_forbidden",(_this select 0) lbValue (_this select 1)] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
}];
_forbidden_tags_list ctrlAddEventHandler["LBDblClick",{
["variables_tags_forbidden",(_this select 0) lbValue (_this select 1)] call ac_fnc_removeFromConfig;
(_this select 0) lbDelete (_this select 1);
}];