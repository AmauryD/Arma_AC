#include "macros.h"

private "_allowedWeapons";
_allowedWeapons = param [0,[],[[]]];

{
 if(!((tolower _x) in _allowedWeapons)) then {
 _message = format["%1 (%2) : bad weapon %3.",name player,getplayeruid player,_x];
 [[RISK_HIGH,"AC_BadWeapons.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
 player removeWeapon _x;
 if(!DEBUG) then {DOCRASH};
 };
}count weapons player;