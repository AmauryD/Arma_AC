private "_spawnedList";
disableSerialization;
_display = findDisplay 12340;
if(isNull _display) exitWith {};
_spawnedList = _display displayCtrl 12356;

lbClear _spawnedList;
{
    if(!isnil {_x getVariable "ac_spawned_veh"}) then {
    _name = getText (configFile >> "cfgvehicles" >> typeOf _x >> "displayName");
    _index = _spawnedList lbAdd format ["%1 (%2m)",_name,floor (player distance _x)];
    _spawnedList lbSetValue [_index,_x getVariable "ac_spawned_veh"];
    };
}foreach vehicles;
{
    if(!isnil {_x getVariable "ac_spawned_veh"}) then {
    _name = getText (configFile >> "cfgvehicles" >> typeOf _x >> "displayName");
    _index = _spawnedList lbAdd format ["%1 (%2m)",_name,floor (player distance _x)];
    _spawnedList lbSetValue [_index,_x getVariable "ac_spawned_veh"];
    };
}foreach allMissionObjects "Static";
