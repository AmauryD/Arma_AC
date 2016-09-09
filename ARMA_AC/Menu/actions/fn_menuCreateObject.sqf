/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 1234563;

_objectClass = (_this select 0) lbData (_this select 1);
_id = floor random 5000;
_pos = [0,0,0];

if(_objectClass iskindof "AllVehicles") then {
_pos = [getPos player, 1, 10, 3, 0, 20, 0] call BIS_fnc_findSafePos;
hintSilent format ["Vehicle %1 has been created at the nearest safe position (max 10m).",getText (configFile >> "CfgVehicles" >> _objectClass >> "displayName")];
}else{
_pos = getPosATL player;
hintSilent format ["Vehicle %1 has been created on you.",getText (configFile >> "CfgVehicles" >> _objectClass >> "displayName")];
};

_vehicle = _objectClass createVehicle _pos;
_vehicle setVariable ["ac_spawned",_id,true];

[] call ac_fnc_refreshObjectsMenu;