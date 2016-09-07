#include "macros.h"
/****************************************************************************************
@created     : 7 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_dir = [_this,0,"",[""]] call bis_fnc_param;
_file = [_this,1,"",[""]] call bis_fnc_param;
_fn_name = [_this,2,"",[""]] call bis_fnc_param;

_fn_debug_message = {private "_text";_text = param [0,"",[""]];if(DEBUG) then {systemChat format ["[AC DEBUG|TIME %1] : %2",diag_tickTime,_text];diag_log format ["[AC DEBUG|TIME %1] : %2",diag_tickTime,_text];};}; //No choices , no functions are initialized ...

if(!isnil {missionNamespace getVariable _fn_name}) then { //already exist
   missionNamespace setVariable [_fn_name,""];  //attempt to override
   if(!(missionNamespace getVariable _fn_name isEqualTo "")) then {
   [format["failed to compile %1",_fn_name]] call _fn_debug_message;
   false
   };
   true
}else{
_final = format["%1\%2.sqf",_dir,_file];
missionNamespace setVariable [_fn_name,compileFinal preprocessFileLineNumbers _final];
[format["%1 compiled successfully",_fn_name]] call _fn_debug_message;
true
};