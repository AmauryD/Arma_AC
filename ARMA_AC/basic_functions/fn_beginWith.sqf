#include "macros.h"
/****************************************************************************************
@created     : 7 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_search = [_this,0,"",[""]] call bis_fnc_param;
_string = [_this,1,"",[""]] call bis_fnc_param;

(_string select [0,count _search]) isEqualTo _search