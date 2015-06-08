#include "macros.h"
/*
By [utopia] Amaury
7/05/2015
*/
_search = [_this,0,"",[""]] call bis_fnc_param;
_string = [_this,1,"",[""]] call bis_fnc_param;

(_string select [0,count _search]) isEqualTo _search