#define MCF missionConfigFile
#define AC_CFG MCF >> "ARMA_AC"
#define AC_CFG_MP AC_CFG >> "MP"
#define AC_CFG_VARS AC_CFG >> "variablesCfg"
#define AC_CFG_CHAT AC_CFG >> "chatCfg"
#define AC_CFG_VARS_TAGS AC_CFG_VARS >> "tags"
#define AC_CFG_VARS_VARS AC_CFG_VARS >> "variables"

#define AC_FOLDER (getText (AC_CFG >> "folder"))

#define DEBUG (getNumber (AC_CFG >> "debug") == 1)
#define AC_ENABLED (getNumber (AC_CFG >> "enabled") == 1)
#define MP_ENABLED (getNumber (AC_CFG >> "mp_enabled") == 1)

#define CHAT_REMOVE_IP (getNumber (AC_CFG_CHAT >> "remove_ip") == 1)
#define CHAT_REMOVE_URL (getNumber (AC_CFG_CHAT >> "remove_url") == 1)

#define DISPLAY_CHECK ((getArray (AC_CFG >> "display_check") select 0) == 1)
#define VEHICLES_CHECK ((getArray (AC_CFG >> "vehicles_check") select 0) == 1)
#define WEAPONSHOLDER_CHECK ((getArray (AC_CFG >> "weaponHolder_check") select 0) == 1)
#define VARIABLES_CHECK ((getArray (AC_CFG >> "variables_check") select 0) == 1)
#define FILES_CHECK ((getArray (AC_CFG >> "files_check") select 0) == 1)
#define CHAT_CHECK ((getArray (AC_CFG >> "chat_check") select 0) == 1)

#define DISPLAY_ACTION (getArray (AC_CFG >> "display_check") select 1)
#define VEHICLES_ACTION (getArray (AC_CFG >> "vehicles_check") select 1)
#define WEAPONSHOLDER_ACTION (getArray (AC_CFG >> "weaponHolder_check") select 1)
#define VARIABLES_ACTION (getArray (AC_CFG >> "variables_check") select 1)
#define FILES_ACTION (getArray (AC_CFG >> "files_check") select 1)
#define CHAT_ACTION (getArray (AC_CFG >> "chat_check") select 1)

#define RISK_LOW 0
#define RISK_HIGH 1
#define RISK_HACK 2

#define RISK_COLOR_LOW "#FFFF00"
#define RISK_COLOR_HIGH "#B80000"
#define RISK_COLOR_HACK "#800080"

#define RISK_COLOR_LOW_RGB [255, 255, 0, 0.8]
#define RISK_COLOR_HIGH_RGB [255, 0, 0, 0.8]
#define RISK_COLOR_HACK_RGB [215, 0, 255, 0.9]

#define ARRAY_FOUND(STRING,CHAR) STRING find CHAR != -1

#define IS_ADMIN getplayeruid player in (getArray (AC_CFG >> "admins"))

#define REQUIRE_SERVER if(!isServer) exitWith {}
#define REQUIRE_CLIENT if(!hasInterface) exitWith {}
#define REQUIRE_ADMIN if(!(getplayeruid player in (getArray (AC_CFG >> "admins")))) exitWith {}

#define EXEC_SERVER 2
#define EXEC_GLOBAL_CLIENTS -2
#define EXEC_GLOBAL 0

#define DOCRASH if(!DEBUG) then {[] call compile preprocessFileLineNumbers (AC_FOLDER + "\crash.sqf")};

#define COMPILE(FILENAME,FNCNAME) if !([_dir,FILENAME,FNCNAME] call ac_compile) then {DOCRASH};
#define COMPILE_INIT if(!isNil "ac_compile") then { \
ac_compile = ""; \
if(!(ac_compile isEqualTo "") && !isServer) exitWith {DOCRASH}; \
}; \
ac_compile = compileFinal preprocessFileLineNumbers (AC_FOLDER + "\basic_functions\fn_compileFinal.sqf"); \
diag_log "compile init finished" 