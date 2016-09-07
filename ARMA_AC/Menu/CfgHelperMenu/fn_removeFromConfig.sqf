/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_key","_return"];
_key = param [0,"",[""]];
_value = param [1];
_return = false;

{
   _currKey = _x select 0;
   _currval = _x select 1;
   if(_currKey isEqualTo _key) exitWith {
      if(_currval isEqualType []) then {
      _cfg = ac_config_output select _forEachIndex select 1;
      _cfg deleteAt (_cfg find _value);
      _return = true;
      };
   };
} forEach ac_config_output;

_return