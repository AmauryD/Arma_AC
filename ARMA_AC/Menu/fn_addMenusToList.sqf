#define ADD_MENU(NAME,DISPLAY_NAME) _index = _menus_list lbAdd NAME;_menus_list lbSetData [_index,DISPLAY_NAME]
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private["_menus_list","_index"];

_menus_list = param[0,controlNull,[controlNull]];

if(_menus_list isEqualTo controlNull) exitWith {["failed to load menu list"] call ac_fnc_debugMessage;};

lbClear _menus_list;
ADD_MENU("Logs","ac_logs_menu");
ADD_MENU("Admin menu","ac_admin_menu");
ADD_MENU("Console","ac_console_menu");
ADD_MENU("Objects menu","ac_objects_menu");
ADD_MENU("Config File Maker","ac_config_menu");

_menus_list ctrlRemoveAllEventHandlers "LBSelChanged";
_menus_list ctrlAddEventHandler["LBSelChanged",{[(_this select 0) lbData (_this select 1)] spawn ac_fnc_changeMenu}];