#include "macros.h"
/*
By [utopia] Amaury
14/05/2015
*/
disableSerialization;
_list = _this select 0;
_index = _this select 1;
_mode =  _list lbValue _index;
[_mode] call ac_fnc_update;
