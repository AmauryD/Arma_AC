#include "macros.h"
/*
By [utopia] Amaury
created : 11/05/2015
updated : 23/05/2015
contact on the ts3 : ts.utopiagaming.fr or the website www.utopiagaming.fr
*/
waitUntil{!isnil "BIS_fnc_init" && BIS_fnc_init};

if(!AC_ENABLED) exitWith {};

if(getplayeruid player in (getArray (AC_CFG >> "admins"))) exitWith {
  [[player],"ac_fnc_adminRequest",false,false] call bis_fnc_mp;
};

if(getText(configFile >> "CfgFunctions" >> "init") != "A3\functions_f\initFunctions.sqf") exitWith {
  [[RISK_HACK,"AC_LOG.log",format["%1 (%2) Incorrect initFunctions path (%3)",profileName,getPlayerUID player,getText(configFile >> "CfgFunctions" >> "init")]],"AC_fnc_log",false,false] call bis_fnc_mp;
  DOCRASH;
};

player addEventHandler["Take",AC_fnc_interactWithContainer];
[] call AC_fnc_checkFiles;

[] spawn {
private["_allowedWeapons","_badVars","_allowedVariables","_ac_analysed"];
_allowedWeapons = [];
_ac_analysed = [];
_allowedVariables = getArray (AC_CFG_VARS_VARS >> "allowed");
_badVars = getArray (AC_CFG_VARS_VARS >> "forbidden");

{_allowedWeapons pushBack (tolower _x)}foreach getArray (AC_CFG >> "allowed_Weapons");

while{true} do {
  {
  if(!isnil _x) then {
   _message = format["%1 (%2) HACK VARIABLE %3 (forcekicked)",profileName,getplayeruid player,_x];
   [[RISK_HACK,"AC_HackVars.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
   [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call bis_fnc_mp;
   DOCRASH;
 };
}count _badVars;

{
  if(!(_x in _allowedVariables)) then {
    if(!([getArray (AC_CFG_VARS_TAGS >> "allowed"),_x] call ac_fnc_beginWiths)) then {
     if([getArray (AC_CFG_VARS_TAGS >> "forbidden"),_x] call ac_fnc_beginWiths && !([_x,_allowedVariables] call ac_fnc_cfgStringNbr)) then {
       _message = format["%1 (%2) hack var detected by tag %3 (forcekicked)",profileName,getplayeruid player,_x];
       [[RISK_HACK,"AC_HackVars.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
       [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call bis_fnc_mp;
       DOCRASH; //forcekick it's sure that this prefix is a hacked var
     };
       if(!(_x in _ac_analysed)) then { //remove later
         if(!([_x,_allowedVariables] call ac_fnc_cfgStringNbr)) then {
          _message = format["%1 (%2) : illegal var %3",profileName,getplayeruid player,_x];
          [[RISK_HIGH,"AC_BadVars.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
          [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call bis_fnc_mp;
          _ac_analysed pushBack _x;
          if(!DEBUG) then {DOCRASH};
          }else{
          _ac_analysed pushBack _x; //don't do the number string analyse anymore
        };
      };
    }else{
    if(!(_x in _ac_analysed)) then { //don't spam the server
      if(!([_x,_allowedVariables] call ac_fnc_cfgStringNbr)) then {
        _message = format["%1 (%2) : illegal var %3",profileName,getplayeruid player,_x];
        [[RISK_LOW,"AC_BadVars.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
        [[_x,str (missionnamespace getVariable _x)],"AC_fnc_logScript",false,false] call bis_fnc_mp;
        _ac_analysed pushBack _x;
      }else{
          _ac_analysed pushBack _x; //don't do the number string analyse anymore
        };
      };
    };
  };
  true
}count allvariables missionnamespace;

{
  if(!((tolower _x) in _allowedWeapons)) then {
    _message = format["%1 (%2) : bad weapon %3.",name player,getplayeruid player,_x];
    [[RISK_HIGH,"AC_BadWeapons.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
    player removeWeapon _x;
    if(!DEBUG) then {DOCRASH};
    };
  }count weapons player;

  if((unitRecoilCoefficient player) < 1) then {
    [[RISK_HACK,"AC_LOG.log",format["%1 (%2) no recoil hack",profileName,getPlayerUID player]],"AC_fnc_log",false,false] call bis_fnc_mp;
    DOCRASH;
  };

  uisleep 20;
};
};

[] spawn {
private ["_allowedDisplays","_allowedVehicles"];
disableSerialization;
_allowedDisplays = getArray (AC_CFG >> "allowedDisplays");
_allowedVehicles = [];

{_allowedVehicles pushBack (tolower _x)}foreach getArray (AC_CFG >> "allowedVehicles");

while{true} do {
  {
  if(!(ctrlIDD _x in _allowedDisplays)) then {
    _x closeDisplay 0;
    _message = format["%1 (%2) : unknown display with id %3.",name player,getplayeruid player,ctrlIDD _x];
    [[RISK_HIGH,"AC_BadDisplays.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
    if(!DEBUG) then {DOCRASH};
    };
  }count allDisplays;

  if(vehicle player != player) then {
    if(!(tolower (typeof vehicle player) in _allowedVehicles)) then {
      _message = format["%1 (%2) : bad vehicle %3.",name player,getplayeruid player,typeof vehicle player];
      [[RISK_HIGH,"AC_BadVehicle.log",_message],"AC_fnc_log",false,false] call bis_fnc_mp;
      deleteVehicle vehicle player;
      if(!DEBUG) then {DOCRASH};
      };
    };

    uisleep 1;
  };

};

