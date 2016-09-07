/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 1234563;
_spawned_list = _display displayCtrl 1501;

_object = _spawned_list lbValue (lbCurSel _spawned_list);

if(_object isEqualTo 0) exitWith {hintSilent "Please select an object."};

{
    if(!isNil {_x getVariable "ac_spawned"}) then {
        if((_x getVariable "ac_spawned") isEqualTo _object) then {
            player setPos (getPos _x);
            hintSilent format ["You have been teleported on %1",getText (configFile >> "CfgVehicles" >> typeof _x >> "displayName")];
        };
    };
}forEach (vehicles + allMissionObjects "static");
[] call ac_fnc_refreshObjectsMenu;