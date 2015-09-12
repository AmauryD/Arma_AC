#include "macros.h"
/*
By [utopia] Amaury
created : 14/05/2015
updated : 23/05/2015
*/

private ["_target", "_code", "_function","_allowed_tags","_allowedFunctions","_serverID","_ownerID","_on","_return"];

_packetName = [_this, 0, "", [""]] call BIS_fnc_param;
_values = _this select 1;
_code = _values select 1;
_function = tolower (_values select 2);
_target =  _values select 3;
_callerName = [_values,6,"UnknownName"] call bis_fnc_param;
_callerUID = [_values,7,"UnknownUID"] call bis_fnc_param;

_serverID = owner (missionnamespace getvariable ["bis_functions_mainscope",objnull]); //--- Server ID is not always 0

switch (typename _target) do {
  case (typename objnull): {
  _ownerID = owner _target;
  };
  case (typeName []) :{
  _ownerID = 1;
  };
  case (typename true): {
  _ownerID = [_serverID,-1] select _target;
  };
  case (typename 0): {
  _ownerID = _target;
  };
  case (typename grpnull);
  case (typename sideUnknown): {
  _ownerID = -1;
  };
  case (typeName ""): {
  _ownerID = -1;
  };
};

switch(true) do {
	  case (_ownerID == _serverID) : {
    _allowedFunctions = getArray (AC_CFG_MP >> "server" >> "functions");
    _allowed_tags = AC_CFG_MP >> "server" >> "allowed_tags";
    _on = "Server";
    };
    case (_ownerID >= 0 && _ownerID != _serverID) : {
    _allowedFunctions = getArray (AC_CFG_MP >> "client" >> "functions");
    _allowed_tags = AC_CFG_MP >> "client" >> "allowed_tags";
    _on = "Client(s)";
    };
    case (_ownerID < 0) : {
    _allowedFunctions = getArray (AC_CFG_MP >> "global" >> "functions");
    _allowed_tags = AC_CFG_MP >> "global" >> "allowed_tags";
    _on = "All";
    };
};

_return = true;

if(!([getArray _allowed_tags,_function] call ac_fnc_inAllowedFunctions)) then {
  _message = format["Blocked function %1 received by %3 with incorrect tag using %2",_function,_packetName,_on];
  [[2,"AC_MP.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
  [[_function,format["ARGS : %1. FUNCTION : %2",_code,missionnamespace getvariable [_function,{}]]],"ac_fnc_logScript",false,false] call ac_fnc_mp;
  _return = false;
}else{
  if(!(_function in _allowedFunctions)) then {
    _message = format["Blocked function %1 received by %3 using %2",_function,_packetName,_on];
    if(_function in ["bis_fnc_call","bis_fnc_execvm","bis_fnc_spawn","bis_fnc_execfsm"]) then {
    [[RISK_HACK,"AC_MP.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
    }else{
    [[RISK_HIGH,"AC_MP.log",_message],"AC_fnc_log",false,false] call ac_fnc_mp;
    };
    [[_function,format["ARGS : %1. FUNCTION : %2",_code,missionnamespace getvariable [_function,{}]]],"ac_fnc_logScript",false,false] call bis_fnc_mp;
    _return = false;
  };
};

_return