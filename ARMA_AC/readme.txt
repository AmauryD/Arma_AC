create a description.ext file and add this code : 

#include "ARMA_AC\config.hpp"
#include "ARMA_AC\Menu\Menus\menus.hpp"

create a init.sqf file and add this code :

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