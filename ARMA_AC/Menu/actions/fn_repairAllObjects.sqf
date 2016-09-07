/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
{
    if(!isNil {_x getVariable "ac_spawned"}) then {
    	if(alive _x) then {
        _x setDamage 0;
        };
    };
}forEach (vehicles + allMissionObjects "static");

hintSilent "All the vehicle are repaired";
[] call ac_fnc_refreshObjectsMenu;
