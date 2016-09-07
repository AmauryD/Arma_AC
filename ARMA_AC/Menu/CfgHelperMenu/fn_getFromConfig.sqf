/****************************************************************************************
@created     : 07 september 2016
@modified    : 07 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_key","_return"];
_key = param [0,"",[""]];
_return = nil;

{
   _currKey = _x select 0;
   _keyVal = _x select 1;
   if(_currKey isEqualTo _key) exitWith {
      _return = _keyVal;
   };
} forEach ac_config_output;

_return