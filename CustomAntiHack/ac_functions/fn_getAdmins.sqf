#include "macros.h"
/*
By [utopia] Amaury
12/05/2015
*/
private "_admins";
_admins = [];

{
	if(getplayerUid _x in (getArray (AC_CFG >> "admins")) && !isNull _x) then {
    _admins pushBack _x;
	};
}foreach allPlayers;

_admins
