#include "macros.h"
/*
By [utopia] Amaury
14/05/2015
*/
disableSerialization;
_list = _this select 0;
_index = _this select 1;

_display = findDisplay 12340;
_logsInfos = _display displayCtrl 12344;

_seclevel = switch(_list lbValue _index) do {
	case RISK_LOW:{"low"};
	case RISK_HIGH:{"high"};
	case RISK_HACK:{"hack"};
};

_logsInfos ctrlSetStructuredText parseText format["Warning level : %1.<br/>Message : %2.",_seclevel,(_list lbText _index)];