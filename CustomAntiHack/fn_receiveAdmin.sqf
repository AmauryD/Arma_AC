#include "macros.h"
/*
By [utopia] Amaury
16/05/2015
*/
ac_logs = [_this,0,[],[[]]] call bis_fnc_param;
ac_show_messages = false;
ac_god_active = false;
ac_god_v_active = false;
[format["Bien le bonjour admin %1 !",profileName]] spawn bis_fnc_dynamicText;