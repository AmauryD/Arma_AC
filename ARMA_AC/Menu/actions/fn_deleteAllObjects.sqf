/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
{
    if(!isNil {_x getVariable "ac_spawned"}) then {
    	_x setVariable ["ac_deleting",false,false]; //a little security to avoid removed vehicles still being in the list
        deleteVehicle _x;
    };
}forEach (vehicles + allMissionObjects "static");

hintSilent "All the vehicle are deleted";
[] call ac_fnc_refreshObjectsMenu;
