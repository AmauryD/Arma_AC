#include "macros.h"
private "_allowedDisplays";

disableSerialization;
_allowedDisplays = param [0,[],[[]]];

{
  if(!(ctrlIDD _x in _allowedDisplays)) then {
    _x closeDisplay 0;
    _message = format["%1 (%2) : unknown display with id %3.",name player,getplayeruid player,ctrlIDD _x];
    [RISK_HIGH,"AC_BadDisplays.log",_message] remoteExecCall ["AC_fnc_log",EXEC_SERVER];
    if(!DEBUG) then {DOCRASH};
    };
}count allDisplays;