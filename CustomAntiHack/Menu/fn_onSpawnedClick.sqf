private "_id";

disableSerialization;
_list = _this select 0;
_index = _this select 1;

_id = _list lbValue _index;

{
   if(!isnil {_x getVariable "ac_spawned_veh"} && (_x getVariable "ac_spawned_veh") == _id) then {
   _name = typeOf _x;
   deleteVehicle _x;
   hint format ["Vehicle %1 has been deleted",_name];
   };
}foreach vehicles;
{
   if(!isnil {_x getVariable "ac_spawned_veh"} && (_x getVariable "ac_spawned_veh") == _id) then {
   _name = typeOf _x;
   deleteVehicle _x;
   hint format ["Object %1 has been deleted",_name];
   };
}foreach allMissionObjects "static";

[] call ac_fnc_updateSpawnedList;