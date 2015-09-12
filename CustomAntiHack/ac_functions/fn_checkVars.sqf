#include "macros.h"

private ["_private_cache","_badVars","_allowedVariables"];

_private_cache = [_this,0,[],[[]]] call bis_fnc_param;
_badVars = [_this,1,[],[[]]] call bis_fnc_param;
_allowedVariables = [_this,2,[],[[]]] call bis_fnc_param;

{
     if(!isnil _x) then {
   _message = format["%1 (%2) HACK VARIABLE %3 (forcekicked)",profileName,getplayeruid player,_x];
   [[RISK_HACK,"AC_HackVars.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
   [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call ac_fnc_mp;
   DOCRASH;
  };
}count _badVars;

{
  if(!(_x in _allowedVariables)) then {
    if(!([getArray (AC_CFG_VARS_TAGS >> "allowed"),_x] call ac_fnc_beginWiths)) then {
     if([getArray (AC_CFG_VARS_TAGS >> "forbidden"),_x] call ac_fnc_beginWiths && !([_x,_allowedVariables] call ac_fnc_cfgStringNbr)) then {
       _message = format["%1 (%2) hack var detected by tag %3 (forcekicked)",profileName,getplayeruid player,_x];
       [[RISK_HACK,"AC_HackVars.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
       [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call ac_fnc_mp;
       DOCRASH; //forcekick it's sure that this prefix is a hacked var
     };
       if(!(_x in _private_cache)) then { //remove later
         if(!([_x,_allowedVariables] call ac_fnc_cfgStringNbr)) then {
          _message = format["%1 (%2) : illegal var %3",profileName,getplayeruid player,_x];
          [[RISK_HIGH,"AC_BadVars.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
          [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call ac_fnc_mp;
          _private_cache pushBack _x;
          if(!DEBUG) then {DOCRASH};
          }else{
          _private_cache pushBack _x; //don't do the number string analyse anymore
        };
      };
    }else{
    if(!(_x in _private_cache)) then { //don't spam the server
      if(!([_x,_allowedVariables] call ac_fnc_cfgStringNbr)) then {
        _message = format["%1 (%2) : illegal var %3",profileName,getplayeruid player,_x];
        [[RISK_LOW,"AC_BadVars.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
        [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call ac_fnc_mp;
        _private_cache pushBack _x;
      }else{
          _private_cache pushBack _x; //don't do the number string analyse anymore
        };
      };
    };
  };
  true
}count allvariables missionnamespace;

_private_cache