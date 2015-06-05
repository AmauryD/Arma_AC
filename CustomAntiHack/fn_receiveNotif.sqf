#include "macros.h"
/*
By [utopia] Amaury
16/05/2015
*/

_secLevel = [_this,0,0,[0]] call bis_fnc_param;
_file = [_this,1,"",[""]] call bis_fnc_param;
_text = [_this,2,"",[""]] call bis_fnc_param;

if(isnil "ac_logs") then {ac_logs = []};
ac_logs pushBack [_secLevel,_file,_text];

_textColor = switch(_secLevel) do {
    case RISK_LOW:{RISK_COLOR_LOW};
	case RISK_HIGH:{RISK_COLOR_HIGH};
    case RISK_HACK:{RISK_COLOR_HACK};
};

if(!(profileNamespace getVariable ["showMessages",false])) then {
_text = format["<t color='%2'>%1</t>",_text,_textColor];
[_text] spawn bis_fnc_dynamicText;
};

disableSerialization;
_display = findDisplay 12340;
if(!isNull _display) then {
   _modeCb = _display displayCtrl 12343;
   _mode = _modeCb lbValue (lbCurSel _modeCb);
   if(_mode == 0) then {
   [_mode] call ac_fnc_update;
   };
};