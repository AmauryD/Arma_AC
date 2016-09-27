#include "macros.h"
/****************************************************************************************
@created     : 9 september 2016
@modified    : --
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;

waitUntil {!isNull findDisplay 46};
_version = parseNumber ("aclogger" callExtension "version");

"Welcome new admin !" hintC [
    "Thank you to have choosen ARMA_AC to administrate and protect your server !",
    "It's a new AC , report all bugs or failures on contact@utopiagaming.org mail",
	"Press shift + O to open the admin menu.",
	"You're always crashing ? turn on the debug mode in your config file or check in the aclogger folder",
	"/!\ Please configure your config file in the admin menu , then replace the older config.hpp by the one copied in your clipboard or aclogger file.",
	(if (_version isEqualTo 0) then {
    "Aclogger is off , please install it in your arma 3 folder , don't forget to download Package redistribuable Microsoft Visual C++ 2013"
	}else{
      if(_version >= 1.1) then {
        format["Aclogger is detected and has the correct version %1",_version]
      }else{
        "Please update your aclogger file : it's outdated"
  	  };
    })
];
