#include "macros.h"
/*
By [utopia] Amaury
16/05/2015
*/
_admin = param [0,objNull,[objNull]];

if(_admin == objNull) exitWith {};

if(getplayerUid _admin in (getArray (AC_CFG >> "admins"))) then { //check if sended by other way than the init like bis_fnc_mp
	[ac_logs] remoteExec ["ac_fnc_receiveAdmin",owner _admin];
};