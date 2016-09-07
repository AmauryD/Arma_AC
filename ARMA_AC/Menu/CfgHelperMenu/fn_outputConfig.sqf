/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private "_output";

#define LINE(text) text , lineBreak 

["Outputing your new config file ..."] call ac_fnc_logCfg;

_enabled = str (["enabled"] call ac_fnc_getFromConfig);
_debug = str (["debug"] call ac_fnc_getFromConfig);
_display_check = str (["display_check"] call ac_fnc_getFromConfig);
_vehicles_check = str (["vehicles_check"] call ac_fnc_getFromConfig);
_weaponHolder_check = str (["weaponHolder_check"] call ac_fnc_getFromConfig);
_variables_check = str (["variables_check"] call ac_fnc_getFromConfig);
_files_check = str (["files_check"] call ac_fnc_getFromConfig);
_chat_check = str (["chat_check"] call ac_fnc_getFromConfig);

_chat_check_ip = str (["chat_check_ip"] call ac_fnc_getFromConfig);
_chat_check_url = str (["chat_check_url"] call ac_fnc_getFromConfig);

_admins = str (["admins"] call ac_fnc_getFromConfig) splitString "";
_admins set [0,""];_admins set [count _admins - 1,""];
_admins = _admins joinString "";

_badFiles = str (["badFiles"] call ac_fnc_getFromConfig) splitString "";
_badFiles set [0,""];_badFiles set [count _badFiles - 1,""];
_badFiles = _badFiles joinString "";

_badWords = str (["badWords"] call ac_fnc_getFromConfig) splitString "";
_badWords set [0,""];_badWords set [count _badWords - 1,""];
_badWords = _badWords joinString "";

_allowed_weapons = str (["allowed_Weapons"] call ac_fnc_getFromConfig) splitString "";
_allowed_weapons set [0,""];_allowed_weapons set [count _allowed_weapons - 1,""];
_allowed_weapons = _allowed_weapons joinString "";

_allowed_vehicles = str (["allowedVehicles"] call ac_fnc_getFromConfig) splitString "";
_allowed_vehicles set [0,""];_allowed_vehicles set [count _allowed_vehicles - 1,""];
_allowed_vehicles = _allowed_vehicles joinString "";


_allowed_displays = str (["allowedDisplays"] call ac_fnc_getFromConfig) splitString "";
_allowed_displays set [0,""];_allowed_displays set [count _allowed_displays - 1,""];
_allowed_displays = _allowed_displays joinString "";


_tags_allowed = str (["variables_tags_allowed"] call ac_fnc_getFromConfig) splitString "";
_tags_allowed set [0,""];_tags_allowed set [count _tags_allowed - 1,""];
_tags_allowed = _tags_allowed joinString "";

_tags_forbidden = str (["variables_tags_forbidden"] call ac_fnc_getFromConfig) splitString "";
_tags_forbidden set [0,""];_tags_forbidden set [count _tags_forbidden - 1,""];
_tags_forbidden = _tags_forbidden joinString "";

_variables_forbidden = str (["variables_forbidden"] call ac_fnc_getFromConfig) splitString "";
_variables_forbidden set [0,""];_variables_forbidden set [count _variables_forbidden - 1,""];
_variables_forbidden = _variables_forbidden joinString "";

_variables_allowed = str (["variables_allowed"] call ac_fnc_getFromConfig) splitString "";
_variables_allowed set [0,""];_variables_allowed set [count _variables_allowed - 1,""];
_variables_allowed = _variables_allowed joinString "";


/** format command does not work , output too large ... **/

_output = composeText ["
#include ""Macros.h""

#define false 0
#define true 1

/** to Enable the MP filtering feature , please go to the MP config **/
#include ""MP_config.hpp""

class ARMA_AC {

folder = ""ARMA_AC"";

enabled = ",_enabled,"; //enable the anti cheat client side , will not disable the mp filtering
debug = ",_debug,"; //debug mode , just to not be kicked every time when testing ...

/** please config properly your weapons , vehicles and variables , the admin menu can help you in this case **/
display_check = ",_display_check,";
vehicles_check = ",_vehicles_check,";
weaponHolder_check = ",_weaponHolder_check,";
variables_check = ",_variables_check,";
files_check = ",_files_check,";
chat_check = ",_chat_check,";

admins[] = {",_admins,"}; // your uid here , don't remove SP PLAYER if you want to test in solo

class chatCfg {
    remove_ip = ",_chat_check_ip,"; // will remove ip with format IPV4
    remove_url = ",_chat_check_url,"; //will remove websites url's
    badWords[] = {",_badWords,"};
};

badFiles[] = {",_badFiles,"};

class variablesCfg {
    class tags {
      allowed[] = {",_tags_allowed,"};
      forbidden[] = {",_tags_forbidden,"};
    };

    class variables {
      forbidden[] = {",_variables_forbidden,"};
      allowed[] = {",_variables_allowed,"};
    };
};

allowedDisplays[] = {",_allowed_displays,"};

allowed_Weapons[] = {",_allowed_weapons,"};

allowedVehicles[] = {",_allowed_vehicles,"};

};"];

"aclogger" callExtension ("write$aclogger|config_output.hpp$" + str _output);
copyToClipboard str _output;
["The config has been outputed to your clipboard (only in SP). If you have the aclogger.dll , a file config_output.hpp was created in your aclogger folder."] call ac_fnc_logCfg;
["Your config file has been successFully exported"] call ac_fnc_logCfg;
_output

