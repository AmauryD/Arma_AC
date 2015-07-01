#include "macros.h"
/*
By [utopia] Amaury
16/05/2015
*/
REQUIRE_ADMIN;
ac_logs = [_this,0,[],[[]]] call bis_fnc_param;
ac_god_active = false;
ac_god_v_active = false;
ac_god_v_veh = objNull;
[format["Welcome admin %1 !",profileName]] spawn bis_fnc_dynamicText;

waitUntil {!isNull findDisplay 46};

systemChat "shift + >< key to open the menu.";

(findDisplay 46) displayAddEventHandler ["KeyDown", {
_code = _this select 1;
_shift = _this select 2;
if(_code == 86 && _shift && (getplayeruid player in (getArray (AC_CFG >> "admins")))) then {
	[] call ac_fnc_open;
};
}];