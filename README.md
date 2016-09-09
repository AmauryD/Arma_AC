# Arma_AC

Arma 3 Anti cheat.
Admin Menu included. 
More infos on the readme in the Arma_AC folder.

**[Aclogger](https://github.com/AmauryD/aclogger/) is recommanded with the anti cheat , just put it in your a3 folder (server and client)**

Contact me on contact@utopiagaming.org for questions and bug report.

## Installation

###### create a description.ext file in your mission and add this code : 

:heavy_exclamation_mark: Some conflits can happen with the mp_config.hpp if the **CfgRemoteExec** class already exists , to fix it just merge the content of the 2 classes in 1.

```sqf
#include "ARMA_AC\config.hpp"
#include "ARMA_AC\Menu\Menus\menus.hpp"
```

###### create a init.sqf file in your mission and add this code :

```sqf
#define AC_FOLDER (getText (missionConfigFile >> "ARMA_AC" >> "folder"))

if(isServer) then {
	[] execVM (AC_FOLDER + "\initServer.sqf");
	if(hasInterface) then {
	waitUntil {
	  !isNil "ac_fnc_log"
	};
	[] execVM (AC_FOLDER + "\initClient.sqf");
  };
}else{
   [] execVM (AC_FOLDER + "\initClient.sqf");
};
```

## Changelog

- ARMA_AC
  - Organizing folders
  - Removed old menus and defines
  - New menus
    - Admin menu 
    - Teleport menu (in admin menu)
    - Console menu
    - Spawning menu
    - Spectate menu (in admin menu)
    - Logs menu
  - Config File Maker 
    * Helps you making your config file and adapt to your server
  - Replaced old useless MP filtering methods with the new one
  - New chat filtering method
  - Admin welcome message
  - Performance optimization
  - A lot of bug fixes
  - Debug mode doesn't make the client crash
  - Debug mode is now showing in chat
