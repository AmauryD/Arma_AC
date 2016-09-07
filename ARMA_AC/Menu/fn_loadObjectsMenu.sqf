#define ADD_TAB_SPAWN(NAME,TYPE) _index = _spawn_type_combo lbAdd NAME;_spawn_type_combo lbSetData [_index,TYPE]
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
_display = findDisplay 1234563;
_other_menus = _display displayCtrl 2100;

_objects_list = _display displayCtrl 1500;
_spawned_list = _display displayCtrl 1501;
_spawn_type_combo = _display displayCtrl 2101;

_delete_all_objects_btn = _display displayCtrl 1600;
_repair_all_objects_btn = _display displayCtrl 1601;
_refuel_all_objects_btn = _display displayCtrl 1602;

_teleport_on_object_btn = _display displayCtrl 1606;

_delete_s_object_btn = _display displayCtrl 1603;
_repair_s_object_btn = _display displayCtrl 1604;
_refuel_s_object_btn = _display displayCtrl 1605;

_delete_all_objects_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_deleteAllObjects];
_repair_all_objects_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_repairAllObjects];
_refuel_all_objects_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_refuelAllObjects];

_delete_s_object_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_deleteSelObject];
_repair_s_object_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_repairSelObject];
_refuel_s_object_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_refuelSelObject];
_teleport_on_object_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_teleportOnObject];

_spawn_type_combo ctrlAddEventHandler ["LBSelChanged",ac_fnc_changeObjectsList];
_objects_list ctrlAddEventHandler ["LBDblClick",ac_fnc_menuCreateObject];

ADD_TAB_SPAWN("Tanks","Tank");
ADD_TAB_SPAWN("Cars","Car");
ADD_TAB_SPAWN("Helicopters","Helicopter");
ADD_TAB_SPAWN("Planes","Plane");
ADD_TAB_SPAWN("Ships","Ship");
ADD_TAB_SPAWN("Structures","Building");
ADD_TAB_SPAWN("Ammoboxes","ReammoBox_F");
ADD_TAB_SPAWN("Weapons","Weapon_Base_F");
ADD_TAB_SPAWN("Items","Items_base_F");
ADD_TAB_SPAWN("Bags","Bag_Base");

[_other_menus] call ac_fnc_addMenusToList;
[_other_menus,"DATA","ac_objects_menu"] call ac_fnc_lbDeleteAt;
[] call ac_fnc_refreshObjectsMenu;