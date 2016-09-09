#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_SERVER;
_admin = param [0,objNull,[objNull]];

if(_admin == objNull) exitWith {};

if(getplayerUid _admin in (getArray (AC_CFG >> "admins"))) then { //check if sended by other way than the init like bis_fnc_mp
	[ac_logs] remoteExec ["ac_fnc_receiveAdmin",_admin];
};