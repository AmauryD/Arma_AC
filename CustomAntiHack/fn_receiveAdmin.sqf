#include "macros.h"
/*
By [utopia] Amaury
16/05/2015
*/
ac_logs = [_this,0,[],[[]]] call bis_fnc_param;
ac_show_messages = false;
ac_god_active = false;
ac_god_v_active = false;
[format["Welcome admin %1 !",profileName]] spawn bis_fnc_dynamicText;

(findDisplay 46) displayAddEventHandler ["KeyDown", {
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;

if(_code == 86 && _shift && (getplayeruid player in (getArray (missionConfigFile >> "antiCheat" >> "admins")))) then {
	[] call ac_fnc_open;
};
}];