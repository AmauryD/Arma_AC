# Arma_AC

Arma 3 Anti cheat.
Admin Menu included. 
More infos on the readme in the Arma_AC folder.

__Please configure properly your config.hpp in singleplayer before putting this in multiplayer.__

**[Aclogger](https://github.com/AmauryD/aclogger/) is recommanded with the anti cheat , just put it in your a3 folder (server and client)**

Contact me on contact@utopiagaming.org for questions and bug report.

## Installation

###### create a description.ext file in your mission and add this code : 

:heavy_exclamation_mark: Some conflits can happen with the mp_config.hpp if the **CfgRemoteExec** class already exists , to fix it just merge the content of the 2 classes in 1.

:arrow_right: Don't forget to add your [UID](https://community.bistudio.com/wiki/getPlayerUID) to the config.hpp file in `admins[]`

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

## Last Changelog

- new teleport checking method
- cheking running scripts in the background (experimental)
- cfgHelperMenu updated
  
## Config File Explanation

In [config.hpp](https://github.com/AmauryD/Arma_AC/blob/master/ARMA_AC/config.hpp) you have a lot parameters , this section will help you to understand how it works and what it means.
The CfgFileHelper menu in the admin menu can help you to configure all this .

#### folder : 
- Simply the current Arma_ac folder path (default : "ARMA_AC")

#### enabled : 
- Set to true to enable the anti cheat and false to disable it

#### debug : 
- Enable debug mode , will print informations in the chat and will disable kick/crash on the players.

#### display_check : 
- Parameter 1 : enable or not displays checking , it's usefull for cheaters who use custom menus , don't forget to whitelist yours because all the displays are checked.
- Parameter 2 : action to perform if an unknown display has been detected ("KICK","CRASH","NOTHING").

#### vehicles_check : 
- Parameter 1 : enable or not vehicles checking , if the player gets in a hacked vehicle , the vehicle will be deleted.
- Parameter 2 : action to perform after the deletion ("KICK","CRASH","NOTHING").

#### weaponHolder_check : 
- Parameter 1 : enable or not weapons checking , if the player has bad gear on him , it will trigger this.
- Parameter 2 : action to perform ("KICK","CRASH","NOTHING").

#### variables_check : 
- Parameter 1 : enable missionNamespace variables checking.
- Parameter 2 : action to perform if a unknown var has been detected ("KICK","CRASH","NOTHING").

#### files_check : 
- Parameter 1 : check files on mission start.
- Parameter 2 : action to perform if a hack file ("KICK","CRASH","NOTHING").

#### chat_check : 
- Parameter 1 : enable or not filtering the player chat bar .
- Parameter 2 : action to perform => "NOTHING" forced.

#### running_scripts_check : 
- Parameter 1 : check external scripts , experimental , give me feedback about this feature .
- Parameter 2 : action to perform .

#### tp_check : 
- Parameter 1 : enable or not anti teleport check , only checking map teleport .
- Parameter 2 : action to perform .


#### admins :
- The list of admins UID , will activate the admin menu for admins . Please keep the "_SP_PLAYER_".
- Admins are excluded of the anti cheat analyse process .

#### (class) chatCfg :
- The list of admins UID , will activate the admin menu for admins . Please keep the "_SP_PLAYER_".
- Admins are excluded of the anti cheat analyse process .
	* __remove_ip__ 
		- remove the entered ip formats in chat bar.
    * __remove_url__ 
        - remove the urls sent in the chat bar.
    * __badWords__ 
		- remove the listed bad words sent in the chat bar.

#### badFiles : 
- The list of files checked on the mission start , will trigger if in this list .

#### (class) variablesCfg : 
- (class) tags :
	* allowed : 
	    - allowed variales tags (example : "bis_" will allow all variables like bis_fnc_mp) .
		- if a variables has an allowed tag but not in allowed variables list , it will send a low hack risk message to the server.
	* forbidden : 
		- forbidden variables tags , will automaticly crash the client if he has a bad tag.
- (class) variables :
	* allowed
		- allowed variables list , all the variables you need in your mission , put them here . (the cfgHelperMenu can help you in this case).
		- will not send warning messages.
	* forbidden : 
		- forbidden variables , will automaticly crash the client if he has a bad var.

#### allowedDisplays : 
- The list of allowed displays id's

#### allowed_Weapons :
- The list of allowed weapons classNames

#### allowedVehicles :
- The list of allowed vehicles classNames

