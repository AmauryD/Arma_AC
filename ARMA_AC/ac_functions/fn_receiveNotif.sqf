#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_ADMIN;
REQUIRE_CLIENT;

_secLevel = param [0,0,[0]];
_file = param [1,"",[""]];
_text = param [2,"",[""]];

diag_log _text;

if(isnil "ac_logs") then {ac_logs = []};
ac_logs pushBack [_secLevel,_file,_text];

_textColor = switch(_secLevel) do {
    case RISK_LOW:{RISK_COLOR_LOW};
	case RISK_HIGH:{RISK_COLOR_HIGH};
    case RISK_HACK:{RISK_COLOR_HACK};
};

_text = format["<t color='%2'>%1</t>",_text,_textColor];

if(!(profileNamespace getVariable ["showMessages",false])) then {
[_text] spawn bis_fnc_dynamicText;
}else{
hint parseText format["AntiCheat : <br/> %1",_text];
};

[_secLevel,_file,_text] call ac_fnc_addLogToMenu;