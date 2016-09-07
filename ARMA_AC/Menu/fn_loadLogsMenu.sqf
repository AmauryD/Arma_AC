#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
REQUIRE_ADMIN;

private["_display","_other_menus"];
_display = findDisplay 1234561;
_other_menus = _display displayCtrl 2100;
_logs_list = _display displayCtrl 1500;
_logs_hack_cbx = _display displayCtrl 2800;
_logs_description = _display displayCtrl 1100;

_copy_s_log = _display displayCtrl 1600;
_copy_all_logs = _display displayCtrl 1601;

_copy_s_log ctrlAddEventHandler ["ButtonClick",ac_fnc_copyAllLogs];
_copy_all_logs ctrlAddEventHandler ["ButtonClick",ac_fnc_copySelectedLog];

_logs_hack_cbx ctrlAddEventHandler ["CheckedChanged",ac_fnc_filterHackLogs];
_logs_list ctrlAddEventHandler["LBSelChanged",ac_fnc_showLogDescription];

[_other_menus] call ac_fnc_addMenusToList;
[_other_menus,"DATA","ac_logs_menu"] call ac_fnc_lbDeleteAt;

_logs = ac_logs apply {_x}; // copy the array
reverse _logs;

lbClear _logs_list;
{
	_secRisk = _x select 0;
	_message = _x select 2;

    _color = [_secRisk,"RGB"] call ac_fnc_getRiskColor;
      
    _index = _logs_list lbAdd _message;
    _logs_list lbSetValue [_index,_secRisk];
    _logs_list lbSetColor [_index,_color];
}foreach _logs;