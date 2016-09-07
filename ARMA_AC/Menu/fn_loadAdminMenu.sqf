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
_display = findDisplay 1234562;
_other_menus = _display displayCtrl 2100;

_players_list = _display displayCtrl 1500;

_tp_to_selected = _display displayCtrl 1600;
_glue_selected = _display displayCtrl 1601;
_kill_selected = _display displayCtrl 1602;
_heal_selected = _display displayCtrl 1603;
_tp_selected = _display displayCtrl 1604;
_removeGear_selected = _display displayCtrl 1605;
_repair_selected = _display displayCtrl 1606;
_spectate_selected = _display displayCtrl 1607;
_kick_selected = _display displayCtrl 1608;
_ban_selected = _display displayCtrl 1609;

_god_mode = _display displayCtrl 1610;
_bullets_mode = _display displayCtrl 1611;
_armory_mode = _display displayCtrl 1612;
_vehicle_god_mode = _display displayCtrl 1613;
_free_camera = _display displayCtrl 1614;
_map_teleport = _display displayCtrl 1615;

_god_mode ctrlAddEventHandler ["ButtonClick",ac_fnc_godMode];
_vehicle_god_mode ctrlAddEventHandler ["ButtonClick",ac_fnc_vehiclegodMode];
_armory_mode ctrlAddEventHandler ["ButtonClick",ac_fnc_armory];
_bullets_mode ctrlAddEventHandler ["ButtonClick",ac_fnc_bulletsMode];
_free_camera ctrlAddEventHandler ["ButtonClick",ac_fnc_freeCamera];
_map_teleport ctrlAddEventHandler ["ButtonClick",ac_fnc_mapTeleport];

_tp_to_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_teleportToPlayer];
_glue_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_glue];
_kill_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_kill];
_heal_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_heal];
_tp_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_teleportPlayer];
_removeGear_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_removeGear];
_repair_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_repair];
_spectate_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_spectate];
_kick_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_kick];
_ban_selected ctrlAddEventHandler ["ButtonClick",ac_fnc_ban];

{
    _name = name _x;
    _index = _players_list lbAdd _name;
    _players_list lbSetTooltip [_index, format["UID : %1\nWEAPON : %2\nPISTOL : %3\nHEALTH : %4/100\nVEHICLE : %5\nLOCATION : %6",
    getplayeruid _x,
    getText (configFile >> "cfgweapons" >> primaryWeapon _x >> "displayName"),
    getText (configFile >> "cfgweapons" >> secondaryWeapon _x >> "displayName"),
    100 - (getDammage _x * 100),
    getText (configFile >> "CfgVehicles" >> typeOf vehicle _x >> "displayName"),
    text nearestLocation [ getPosATL _x, ""]]];
    _players_list lbSetData [_index,getplayeruid _x];
    if(_x in (call ac_fnc_getAdmins)) then {
        _players_list lbSetColor [_index,[0, 255, 255 , 0.8]]; // red color
    };
}foreach allPlayers;

[_other_menus] call ac_fnc_addMenusToList;
[_other_menus,"DATA","ac_admin_menu"] call ac_fnc_lbDeleteAt;