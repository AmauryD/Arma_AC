#include "macros.h"
private "_allowedDisplays";

disableSerialization;
_allowedDisplays = [_this,0,[],[[]]] call bis_fnc_param;

{
  if(!(ctrlIDD _x in _allowedDisplays)) then {
    _x closeDisplay 0;
    _message = format["%1 (%2) : unknown display with id %3.",name player,getplayeruid player,ctrlIDD _x];
    [[RISK_HIGH,"AC_BadDisplays.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
    if(!DEBUG) then {DOCRASH};
    };
}count allDisplays;