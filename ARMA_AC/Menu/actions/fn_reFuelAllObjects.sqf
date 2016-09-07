/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
{
    if(!isNil {_x getVariable "ac_spawned"}) then {
        _x setAmmoCargo 1;
        _x setFuelCargo 1;
    };
}forEach (vehicles + allMissionObjects "static");

hintSilent "All the vehicle are refueled";
[] call ac_fnc_refreshObjectsMenu;
