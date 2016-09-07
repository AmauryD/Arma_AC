#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_uid","_return"];
_uid = [_this,0,"0",[""]] call bis_fnc_param;
_return = objNull;

{
   if(getPlayerUID _x == _uid) exitWith {
   _return = _x;
   };
} forEach allPlayers;

_return