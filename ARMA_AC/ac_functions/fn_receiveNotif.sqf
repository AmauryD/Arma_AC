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

if(isnil "ac_logs") then {ac_logs = []};
ac_logs pushBack [_secLevel,_file,_text];

_textColor = [_secLevel,"HTML"] call ac_fnc_getRiskColor;

_text = format["<t color='%2'>%1</t>",_text,_textColor];

if(!(profileNamespace getVariable ["showMessages",false])) then {
[_text] spawn bis_fnc_dynamicText;
}else{
hint parseText format["AntiCheat : <br/> %1",_text];
};

diag_log _text;