/**
supported functions sended via mp functions (bis_fnc_mp,life_fnc_mp,...).
only packets in supported_packets will be filtered.
**/

class MP {
  supported_packets[] = {
  "ac_fnc_mp_packet"
  };
  class global { //executed commands on all
    allowed_tags[] = {  // functions with other tags will be refused automaticaly
        "ac",
        "bis"
    };

    functions[] = {
        "bis_fnc_effectkilledsecondaries",
        "bis_fnc_effectkilledairdestruction",
        "bis_fnc_setidentity"
    };
  };

  class client {
    allowed_tags[] = {  // functions with other tags will be refused automaticaly
        "ac",
        "bis"
    };

    functions[] = { // Les fonctions qui n'ont pas un tag whitelisté ne seront pas acceptée même si elles se trouvent dans cette liste
    "ac_fnc_receiveadmin",
    "ac_fnc_receivenotif",

    "bis_fnc_objectvar",
    "bis_fnc_dynamictext",
    "bis_fnc_effectkilledsecondaries",
    "bis_fnc_effectkilledairdestruction"
    };
};
  class server {
    allowed_tags[] = {  // functions with other tags will be refused automaticaly
    "ac",
    "bis"
    };

    functions[] = { // Les fonctions qui n'ont pas un tag whitelisté ne seront pas acceptée même si elles se trouvent dans cette liste
    "ac_fnc_log",
    "ac_fnc_adminrequest",
    "ac_fnc_logscript",

    "bis_fnc_effectkilledairdestruction",
    "bis_fnc_objectvar",
    "bis_fnc_setidentity",
    "bis_fnc_effectkilledsecondaries",
    "bis_fnc_dynamictext"
    };
  };
};