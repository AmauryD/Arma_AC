/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;
_display = findDisplay 1234563;
_spawnedList = _display displayCtrl 1501;


lbClear _spawnedList;
{
    if(!isnil {_x getVariable "ac_spawned"} && isNil {_x getVariable "ac_deleting"}) then {
    _name = getText (configFile >> "cfgvehicles" >> typeOf _x >> "displayName");
    _picture = getText (configFile >> "cfgvehicles" >> typeOf _x >> "picture");
    _index = _spawnedList lbAdd format ["%1 (%2m away)",_name,floor (player distance _x)];
    _spawnedList lbSetValue [_index,_x getVariable "ac_spawned"];
    _spawnedList lbSetPicture [_index,_picture];
    _spawnedList lbSetTooltip [_index,format["DAMAGE : %1\nFUEL : %2\nDRIVER : %3\nLOCATION : %4",damage _x,fuel _x,(if(!isNull driver _x) then {driver _x}else{"No driver"}),text nearestLocation [getPosATL _x, ""]]];
    };
}foreach (vehicles + allMissionObjects "Static");

lbSort _spawnedList;