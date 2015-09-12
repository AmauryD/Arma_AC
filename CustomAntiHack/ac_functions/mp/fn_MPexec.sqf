/*
	Author: Karel Moricky
	Modified by [utopia] Amaury for MP anti cheat

	Description:
	Execute received remote execution

	Parameter(s):
	_this select 0: STRING - Packet variable name (see MP_CONFIG.hpp to modify)
	_this select 1: ARRAY - Packet value 
	
	Returns:
	BOOL - true if function was executed successfully
*/
disableSerialization;
private ["_validFunctions","_params","_functionName","_target","_isPersistent","_isCall","_varName","_varValue","_function","_callerName","_callerUID","_exitScope"];
_exitScope = false;
_varName = _this select 0;
_varValue = _this select 1;

_mode = 	[_varValue,0,[0]] call bis_fnc_param;
_params = 	[_varValue,1,[]] call bis_fnc_param;
_functionName =	toLower ([_varValue,2,"",[""]] call bis_fnc_param);
_target =	[_varValue,3,true,[ObjNull,true,0,[],sideUnknown,GrpNull,""]] call bis_fnc_param;
_isPersistent =	[_varValue,4,false,[false]] call bis_fnc_param;
_isCall =	[_varValue,5,false,[false]] call bis_fnc_param;

_callerName = [_varValue,6,"UnknownName",[""]] call bis_fnc_param; //only with life_fnc_mp_packet
_callerUID = [_varValue,7,"UnknownUID",[""]] call bis_fnc_param; //only with life_fnc_mp_packet

if(_functionName == "bis_fnc_execvm") exitWith {
	_param2 = _params select 1;
	if(!isNil "_param2") then {
	  if(_param2 == "initPlayerServer.sqf") exitWith {true};
	  	false
	};
};

if(_functionName == "bis_fnc_execfsm") exitWith {
	_param1 = _params select 0;
	if(!isNil "_param1") then {
	  if(_param1 == "A3\modules_f\Marta\data\fsms\marta_local.fsm") exitWith {true};
	  	false
	};
};

if (ismultiplayer && _mode == 0) then {
	if (isserver) then {
		if(!(_this call ac_fnc_filterMP)) exitWith {false};
		if (typename _target == typename []) then {
			//--- Multi execution
			{
				[_varName,[_mode,_params,_functionName,_x,_isPersistent,_isCall,_callerName,_callerUID]] call ac_fnc_MPexec;
			} foreach _target;
		} else {
			//--- Single execution
			private ["_ownerID","_serverID"];
			_serverID = owner (missionnamespace getvariable ["bis_functions_mainscope",objnull]); //--- Server ID is not always 0

			//--- Server process
			switch (typename _target) do {
				case (typename objnull): {
					_ownerID = owner _target;
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
			missionNamespace setVariable [_varName,[1,_params,_functionName,_target,_isPersistent,_isCall,"__SERVER__","__SERVER__"]];
			//--- Send to clients
			if (_ownerID < 0) then {
				//--- Everyone
				publicvariable _varName;
			} else {
				if (_ownerID != _serverID) then {
					//--- Client
					_ownerID publicvariableclient _varName;
				};
			};

			//--- Server execution (for all or server only)
			if (_ownerID < 0 || _ownerID == _serverID) then {
				[_varName,missionNamespace getVariable _varName] spawn ac_fnc_MPexec;
			};

			//--- Persistent call (for all or clients)
			if (_isPersistent) then {
				if (typename _target != typename 0) then {
					private ["_logic","_queue"];
					_logic = missionnamespace getvariable ["bis_functions_mainscope",objnull];
					_queue = _logic getvariable ["BIS_fnc_MP_queue",[]];
					_queue set [
						count _queue,
						+(missionNamespace getVariable _varName)
					];
					_logic setvariable ["BIS_fnc_MP_queue",_queue,true];
				} else {
					["Persistent execution is not allowed when target is %1. Use %2 or %3 instead.",typename 0,typename objnull,typename false] call bis_fnc_error;
				};
			};
		};
	};
} else {
	//--- Client
	private ["_canExecute"];
	_canExecute = switch (typename _target) do {
		case (typename grpnull): {player in units _target};
		case (typename sideUnknown): {playerside == _target;};
		case (typeName ""): {if(!isNull player) then {getPlayerUID player == _target;} else {false}};
		default {true};
	};

	if (_canExecute) then {
		_function = missionnamespace getvariable _functionName;
		if (!isnil "_function") then {
			if (_isCall) then {
				_params call _function;
			} else {
				_params spawn _function;
			};
			true
		} else {
			["Function '%1' does not exist",_functionName] call bis_fnc_error;
			false
		};
	};
};