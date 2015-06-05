#define DEBUG true

#define MCF missionConfigFile
#define AC_CFG MCF >> "AntiCheat"
#define AC_CFG_MP AC_CFG >> "MP"
#define AC_CFG_VARS AC_CFG >> "variablesCfg"
#define AC_CFG_VARS_TAGS AC_CFG_VARS >> "tags"
#define AC_CFG_VARS_VARS AC_CFG_VARS >> "variables"

#define RISK_LOW 0
#define RISK_HIGH 1
#define RISK_HACK 2

#define RISK_COLOR_LOW "#FFFF00"
#define RISK_COLOR_HIGH "#B80000"
#define RISK_COLOR_HACK "#800080"

#define RISK_COLOR_LOW_RGB [255, 255, 0, 0.8]
#define RISK_COLOR_HIGH_RGB [255, 0, 0, 0.8]
#define RISK_COLOR_HACK_RGB [215, 0, 255, 0.9]

#define DOCRASH [] call compile preprocessFileLineNumbers "CustomAntiHack\crash.sqf"