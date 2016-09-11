#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 11 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;

private ["_allowedWeapons","_player_weapons"];
_allowedWeapons = param [0,[],[[]]];

_player_weapons = weapons player apply {toLower _x};

{
 if !(_x in _allowedWeapons) then {
 _message = format["%1 (%2) : bad weapon %3.",name player,getplayeruid player,_x];
 [RISK_HIGH,"AC_BadWeapons.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
 player removeWeapon _x;
 [WEAPONSHOLDER_ACTION] call ac_fnc_handleAction;
 };
}foreach _player_weapons;