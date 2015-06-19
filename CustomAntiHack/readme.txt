Elements in config are configured for Altis life but you can remove them and configure it for your own mission.
All elements,cheaters,bad vars are logged in your aclogger folder in your arma 3 folder.
If your are on Altis life there is a menu where you can see logs and other things.
Contact me on www.utopiagaming.fr for more explanations.

create a description.ext file and add this code : 

#include "CustomAntiHack\config.hpp"
#include "CustomAntiHack\Menu\Menu.hpp"

create a init.sqf file and add this code

if(isServer) then {
	[] execVM "CustomAntiHack\initServer.sqf";
}else{
	[] execVM "CustomAntiHack\init.sqf";
};