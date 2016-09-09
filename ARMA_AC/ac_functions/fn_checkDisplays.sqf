#include "macros.h"
/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private "_allowedDisplays";
REQUIRE_CLIENT;

disableSerialization;
_allowedDisplays = param [0,[],[[]]];

{
  if(!(ctrlIDD _x in _allowedDisplays)) then {
    _x closeDisplay 0;
    _message = format["%1 (%2) : unknown display with id %3.",name player,getplayeruid player,ctrlIDD _x];
    [RISK_HIGH,"AC_BadDisplays.log",_message] remoteExecCall ["AC_fnc_log",EXEC_SERVER];
    [DISPLAY_ACTION] call ac_fnc_handleAction;
  };
}count allDisplays;