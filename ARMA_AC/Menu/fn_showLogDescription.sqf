#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private["_display","_logs_description"];
_display = findDisplay 1234561;
_logs_description = _display displayCtrl 1100;

_logList = _this select 0;
_index = _this select 1;

_seclevel = switch(_logList lbValue _index) do {
	case RISK_LOW:{"low"};
	case RISK_HIGH:{"high"};
	case RISK_HACK:{"hack"};
};

_logs_description ctrlSetStructuredText parseText format["Warning level : %1.<br/>Message : %2.",_seclevel,(_logList lbText _index)];