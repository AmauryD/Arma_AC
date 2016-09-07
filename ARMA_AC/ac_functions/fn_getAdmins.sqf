#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private "_admins";
_admins = [];

{
	if(getplayerUid _x in (getArray (AC_CFG >> "admins")) && !isNull _x) then {
    _admins pushBack _x;
	};
}foreach allPlayers;

_admins
