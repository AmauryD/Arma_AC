#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_ADMIN;
REQUIRE_CLIENT;

ac_logs = param [0,[],[[]]];
ac_god = [false,0];
ac_god_v = [false,objNull];
ac_old_display_id = -1;

if(isNil {profileNamespace getVariable "ac_welcome_admin"}) then {
	[] spawn ac_fnc_welcomeAdmin;
	profileNamespace setVariable ["ac_welcome_admin",true];
};

[] call ac_fnc_newCfgArray;

[format["Welcome admin %1 !",profileName]] spawn bis_fnc_dynamicText;

waitUntil {!isNull findDisplay 46};

systemChat "shift + O key to open the menu.";
 
(findDisplay 46) displayAddEventHandler["KeyDown",{
    _code = _this select 1;
	_shift = _this select 2;
	if(_code isEqualTo 24 && _shift && (getplayeruid player in (getArray (AC_CFG >> "admins")))) then {
		if not dialog then {
		["ac_logs_menu"] spawn ac_fnc_changeMenu;
	    };
	};
	false;
}];
