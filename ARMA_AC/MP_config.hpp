/**
Old Version deleted and obsolete , now replaced by remoteExec Command of arma 3 v1.50
Please go to https://community.bistudio.com/wiki/CfgRemoteExec for further informations
**/
#define MP_FILTERING_COMMANDS 1 // 1 = yes | 0 = no
#define MP_FILTERING_FUNCTIONS 1

#define JIP_TARGET_COMMANDS 0
#define JIP_TARGET_FUNCTIONS 0

#define GLOBAL 0
#define CLIENT 1
#define SERVER 2

#define ALLOW_GLOBAL allowedTargets = GLOBAL;
#define ALLOW_CLIENT allowedTargets = CLIENT;
#define ALLOW_SERVER allowedTargets = SERVER;

class CfgRemoteExec
{
        class Commands
        {
            mode = MP_FILTERING_COMMANDS;
            jip = JIP_TARGET_COMMANDS;
        };
        class Functions
        {
            mode = MP_FILTERING_FUNCTIONS;
            jip = JIP_TARGET_FUNCTIONS;
                
            class ac_fnc_receiveadmin {ALLOW_CLIENT};
            class ac_fnc_receivenotif {ALLOW_CLIENT};

            class ac_fnc_log {ALLOW_SERVER};
            class ac_fnc_adminrequest {ALLOW_SERVER};
            class ac_fnc_logscript {ALLOW_SERVER};

            class BIS_fnc_effectKilledAirDestruction {ALLOW_GLOBAL};
            class bis_fnc_setidentity {ALLOW_GLOBAL};
            class BIS_fnc_effectKilledSecondaries {ALLOW_GLOBAL};
        };
};