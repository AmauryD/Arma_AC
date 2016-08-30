#include "macros.h"
_dir = [_this,0,"",[""]] call bis_fnc_param;
_file = [_this,1,"",[""]] call bis_fnc_param;
_fn_name = [_this,2,"",[""]] call bis_fnc_param;

if(!isnil {missionNamespace getVariable _fn_name}) then { //already exist
   missionNamespace setVariable [_fn_name,""];  //attempt to override
   if(!(missionNamespace getVariable _fn_name isEqualTo "")) exitWith {false}; //if failed , return false
};

_final = format["%1\%2.sqf",_dir,_file];
missionNamespace setVariable [_fn_name,compileFinal preprocessFileLineNumbers _final];
diag_log format["%1 compiled",_fn_name];
true;