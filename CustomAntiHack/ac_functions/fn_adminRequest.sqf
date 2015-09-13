#include "macros.h"
/*
By [utopia] Amaury
16/05/2015
*/
_admin = [_this,0,objNull,[objNull]] call bis_fnc_param;

if(_admin isEqualTo objNull) exitWith {};

if(IS_ADMIN) then { //check if sended by other way than the init like bis_fnc_mp
	[[ac_logs],"ac_fnc_receiveAdmin",owner _admin,false] call ac_fnc_mp;
};