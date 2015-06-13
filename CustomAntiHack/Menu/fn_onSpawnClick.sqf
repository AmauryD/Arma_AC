disableSerialization;
_list = _this select 0;
_index = _this select 1;

_display = findDisplay 12340;
_spawnedList = _display displayCtrl 12356;

_className = _list lbData _index;

_created = _className createVehicle (position player);
_created setVariable ["ac_spawned_veh",floor random 5000,true];

[] call ac_fnc_updateSpawnedList;

hint format ["vehicle %1 created",_className];