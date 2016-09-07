/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_SERVER;

_file = param [0,"noFile",[""]];
_content = param [1,"noText",[""]];

_mode = "write";
if(_file in ["bis_fnc_call","bis_fnc_execvm","bis_fnc_spawn","bis_fnc_execfsm"]) then {
	_mode = "append";
};

"aclogger" callExtension format["%1$loggedFiles|%2.log$%3",_mode,_file,_content];