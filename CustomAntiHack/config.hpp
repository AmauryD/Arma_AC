#define true 1
#define false 0

class AntiCheat {
#include "MP_config.hpp"

enabled = true; //enable the anti cheat client side , will not disable the mp filtering
mp_enabled = true; //enable filtering packets via mp functions
debug = true; //debug mode , just to not be kicked every time when testing ...

display_check = true;
vehicles_check = false;
weaponHolder_check = false;
variables_check = true;
files_check = true;

admins[] = {"76561197970859000","_SP_PLAYER_"}; // your uid here , don't remove SP PLAYER if you want to test in solo

badFiles[] = {
    "Cheat File",
    "JM3.sqf",
    "JM3.png",
    "MORT.jpg",
    "wookie.sqf",
    "wookie_wuat\start.sqf",
    "lystoarma3\start.sqf",
    "help.sqf",
    "hack.sqf",
    "cheat.sqf",
    "JxMxE.sqf",
    "JME.sqf",
    "wookiev5.sqf",
    "menu.sqf",
    "fn_MP.sqf",
    "1.sqf",
    "2.sqf",
    "3.sqf",
    "ExtasyFinalMenu.sqf",
    "aimkill.sqf",
    "AlPmaker_survcam.sqf",
    "inventory.sqf",
    "teleport_selected_vehicle_v2.sqf",
    "backpack_star.sqf",
    "infiSTAR_weaponbox_r_a.sqf",

    //added with the powerfull magic AC logging

    "SSPCM\preinit.sqf",
    "SSPCM\CheatDiary\CheatInit.sqf",
    "SSPCM\CheatDiary\CheatMenu.sqf"
};

class variablesCfg {
    class tags {
      allowed[] =  {
          "ac_",
          "bis_"
      };
      forbidden[] = {
          "e_x_t_a_s_y_",
          "brg_",
          "sni_prz_",
          "hax_",
          "dev_",
          "evo_",
          "oqrv8oyvxgqjih2afy5q_",
          "cheat"
      };
  };

  class variables {
    forbidden[] = { //ban direct
        "ESP",
        "Wookie",
        "Extasy",
        "GOD",
        "GodMode",
        "JxMxE_Exec",
        "Lystic",
        "Hack",
        "Script",
        "Wookie_Exec",
        "Bypass",
        "FUNMENUON",
        "FUNMENUNEXT2",
        "ALTISLIFEOFF",
        "fn_openSpawnMenu_weapons_items",
        "fn_OpenMenu_MxTroll",
        "cock_fi238r823r",
        "haxhahxahxhaxhxh82u3489",
        "colorevil",
        //added by the magic of logging
        "cheatcurator",
        "cheatcuratorplayerattributes",
        "brg_infammo",
        "e_x_t_a_s_y_base",
        "e_x_t_a_s_y_m_e_n_u_initmenu",
        "e_x_t_a_s_y_cash_max_t",
        "e_x_t_a_s_y_clevechule",
        "oqrv8oyvxgqjih2afy5q_mainmenu",
        "oqrv8oyvxgqjih2afy5q_restrain",
        "ev_199",
        "evo_teleportallsure",
        "e_x_t_a_s_y_menu_sub"
    };

    allowed[] = {};
};
};

// idd in dialog/
allowedDisplays[] = {
    -1, 
    0, // start basics displays (game menu etc...)
    4,
    5,
    6,
    7,        
    8,
    12,
    17,
    18,
    24,
    70,
    46,
    49,
    53,
    54,
    55,
    57,
    63,      
    72,
    129,
    131,
    148,
    151,
    154,
    174  // end basic displays
};

allowed_Weapons[] = {};
allowedVehicles[] = {};

};