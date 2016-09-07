/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_all_game_displays = []; 

{ 
       _all_game_displays pushBack [(configName _x),getNumber (_x >> "idd")]; 
}forEach ("getNumber (_x >> 'idd') > 0" configClasses configFile);
{ 
       _all_game_displays pushBack [(configName _x),getNumber (_x >> "idd")]; 
}forEach ("getNumber (_x >> 'idd') > 0" configClasses missionConfigFile);

_all_game_displays