/*
By [utopia] Amaury
14/05/2015
*/
private ["_index","_list","_display","_plist","_uid","_player","_mode"];
disableSerialization;
_list = _this select 0;
_index = _this select 1;

_display = findDisplay 12340;

_plist = _display displayCtrl 12341;
_uid = _plist lbData (lbCurSel _plist);
_player = [_uid] call ac_fnc_findPlayerByUid;
if(_player isEqualTo objNull) exitWith {hintSilent "Erreur"};

if(_player == player) then {_mode = 1}else{_mode = 0};

{if(isnil _x) then {missionNamespace setVariable [_x,false]}}foreach ["ac_god_active","ac_god_v_active","ac_god_v_veh"];

switch(_mode) do {
   case 0:{
    switch(_list lbValue _index) do {
	  case 0:{
      (vehicle _player) setPosATL (getPosATL (vehicle player));
      };
      case 1:{
      (vehicle player) setPosATL (getPosATL (vehicle _player));
      };
      case 2:{
      _player setDamage 0;
      };
      case 3:{
      (vehicle _player) setDamage 0; 
      };
      case 4:{
      (vehicle _player) setDamage 1; 
      };
      case 5:{
       if(cameraOn == _player) then {
       player switchCamera "EXTERNAL";
       }else{
       _player switchCamera "EXTERNAL";
       };
      };
      case 6:{
        if(!serverCommandExecutable "#kick") then {
        hint "You need to be logged in admin for now :(";
        };
        serverCommand format ["#kick %1",name _player];
      };
      case 7:{
        if(!serverCommandExecutable "#exec ban") then {
        hint "You need to be logged in admin for now :(";
        };
        serverCommand format ["#exec ban %1",name _player];
      };
    };
   };

   case 1:{
    switch(_list lbValue _index) do {
	  case 0:{
        _display closeDisplay 0;
        openMap [true,false];
        hintSilent "please select a place to teleport";
        ["ac_teleport", "onMapSingleClick", {
	      (vehicle player) setPosATL _pos;
        ["ac_teleport", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
        }] call BIS_fnc_addStackedEventHandler;
      };
      case 1:{
        _player setDamage 0;
      };
      case 2:{
        (vehicle _player) setDamage 0; 
      };
      case 3:{
        (vehicle _player) setDamage 1; 
      };
      case 4:{
        life_cash = life_cash + 100000;
      };
      case 5:{
        life_cash = life_cash + 1000;
      };
      case 6:{
        if(!ac_god_active) then {
        ac_god_id = _player addEventHandler ["handleDamage", {false}];
        hintSilent "God mode activé";
        ac_god_active = true;
        }else{
        _player removeEventHandler ["handleDamage",ac_god_id];
        hintSilent "God mode désactivé";
        ac_god_active = false;
        };
      };
      case 7:{
        if(!ac_god_v_active) then {
        ac_god_v_id = (vehicle _player) addEventHandler ["handleDamage", {false}];
        ac_god_v_veh = vehicle _player;
        hintSilent "God mode vehicule activé";
        ac_god_v_active = true;
        }else{
        (vehicle _player) removeEventHandler ["handleDamage",ac_god_v_id];
        hintSilent "God mode vehicule désactivé";
        ac_god_v_active = false;
        ac_god_v_veh = objNull;
        };
      };
      case 8:{
        _display closeDisplay 0;
        ["Open",true] spawn BIS_fnc_arsenal;
      };
      case 9:{
        hintSilent "Disabled.";
      };
      case 10:{
      _player switchCamera "EXTERNAL";
      };

      case 11:{
      _display closeDisplay 0;
      [] spawn BIS_fnc_camera;
      };

      case 12:{
        if(!serverCommandExecutable "#kick") then {
        hint "You need to be logged in admin for now :(";
        };
        serverCommand format ["#kick %1",name _player];
      };

      case 13:{
        if(!serverCommandExecutable "#exec ban") then {
        hint "You need to be logged in admin for now :(";
        };
        serverCommand format ["#exec ban %1",name _player];
      };
    };
   };
};

[1] call ac_fnc_onModeSelChanged;