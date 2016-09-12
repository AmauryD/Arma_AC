#include "macros.h"

_runningScrips = [] call ac_fnc_getActiveSqfScripts;

{
	_type = _x select 4;
	if(_type in ["EXTERNAL","A3_UNKNWONN"]) then {
		_message = format["%1 (%2) : suspicious external script running %3.",name player,getplayeruid player,diag_activeSQFScripts select _forEachIndex];
		[RISK_HIGH,"AC_badScripts.log",_message] remoteExecCall ["ac_fnc_log",EXEC_SERVER];
		[EXTERNAL_SCRIPTS_ACTION] call ac_fnc_handleAction;
	};
}forEach _runningScrips;
