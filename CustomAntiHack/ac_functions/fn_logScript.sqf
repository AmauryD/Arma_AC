/*
By [utopia] Amaury
12/05/2015
*/

_file = [_this,0,"noFile",[""]] call bis_fnc_param;
_content = [_this,1,"noText",[""]] call bis_fnc_param;
_content = [_content,";"] call ac_fnc_removeChar;

_mode = "write";
if(_file in ["bis_fnc_call","bis_fnc_execvm","bis_fnc_spawn","bis_fnc_execfsm"]) then {
	_mode = "append";
};

"aclogger" callExtension format["%1;aclogger|loggedFiles|%2.log;%3",_mode,_file,_content];