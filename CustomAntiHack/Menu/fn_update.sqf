#include "macros.h"
/*
By [utopia] Amaury
14/05/2015
*/
#define LOGS_MENU 0
#define ADMIN_MENU 1
#define CONSOLE_MENU 2
#define SETTINGS_MENU 3
#define SPAWN_MENU 4

private["_display","_list","_logs","_consoleList","_admins","_color","_ctrlsConsole","_ctrlsLogs","_ctrlsAdmin","_ctrlsSettings","_ctrlsSpawn","_spawnedList"];
disableSerialization;
_mode = _this select 0;

_display = findDisplay 12340;

_list = _display displayCtrl 12341;
_logs = _display displayCtrl 12342;
_modeCb = _display displayCtrl 12343;
_logsInfos = _display displayCtrl 12344;
_Aactions = _display displayCtrl 12347;
_codeInput = _display displayCtrl 12348;
_codeInputButton = _display displayCtrl 12349;
_consoleList = _display displayCtrl 12350;
_filterLowLogs = _display displayCtrl 12345;
_filterLowLogsText = _display displayCtrl 12346;
_showMess = _display displayCtrl 12351;
_showMessText = _display displayCtrl 12352;
_spawnList = _display displayCtrl 12353;
_spawnListType = _display displayCtrl 12354;
_spawnHeader = _display displayCtrl 12355;
_spawnedList = _display displayCtrl 12356;
_spawnedHeader = _display displayCtrl 12357;

_ctrlsConsole = [_codeInputButton,_codeInput,_consoleList];
_ctrlsLogs = [_logs,_logsInfos];
_ctrlsAdmin = [_Aactions,_list];
_ctrlsSettings = [_filterLowLogs,_filterLowLogsText,_showMess,_showMessText];
_ctrlsSpawn = [_spawnList,_spawnListType,_spawnHeader,_spawnedList,_spawnedHeader];

switch(_mode) do {
  case LOGS_MENU: {
    {_x ctrlShow false} forEach _ctrlsAdmin;
    {_x ctrlShow false} forEach _ctrlsConsole;
    {_x ctrlShow false} forEach _ctrlsSettings;
    {_x ctrlShow false} forEach _ctrlsSpawn;
    {_x ctrlShow true} forEach _ctrlsLogs;
    lbClear _logs;
    
     {
	   private "_risk";
	   _secRisk = (ac_logs select ((count ac_logs - _forEachIndex) - 1)) select 0;
	   _message = (ac_logs select ((count ac_logs - _forEachIndex) - 1)) select 2;

     _color = switch(_secRisk) do {
     case 0:{RISK_COLOR_LOW_RGB};
     case 1:{RISK_COLOR_HIGH_RGB};
     case 2:{RISK_COLOR_HACK_RGB};
     };
      
     if(!(profileNamespace getVariable ["showlowlogs",false])) then {
         if(_secRisk != 0) then {
         _index = _logs lbAdd _message;
         _logs lbSetValue [_index,_secRisk];
         _logs lbSetColor [_index,_color];
        };
       }else{
       _index = _logs lbAdd _message;
       _logs lbSetValue [_index,_secRisk];
       _logs lbSetColor [_index,_color];
       };
     }foreach ac_logs;
   };

  case ADMIN_MENU:{
    {_x ctrlShow false} forEach _ctrlsConsole;
    {_x ctrlShow false} forEach _ctrlsSettings;
    {_x ctrlShow false} forEach _ctrlsLogs;
    {_x ctrlShow false} forEach _ctrlsSpawn;
    {_x ctrlShow true} forEach _ctrlsAdmin;
    lbClear _list;
    _admins = [] call ac_fnc_getAdmins;
    
    {
	    if(!isNull _x && isPlayer _x) then {
		  _name = name _x;
		  if(_x in _admins) then {
			  _name = "[admin]" + _name;
		  };
		  _index = _list lbAdd _name;
		  _list lbSetData [_index,getplayeruid _x];
	    };
    }foreach playableUnits;

  };

  case CONSOLE_MENU:{
  {_x ctrlShow false} forEach _ctrlsSettings;
  {_x ctrlShow false} forEach _ctrlsLogs;
  {_x ctrlShow false} forEach _ctrlsAdmin;
  {_x ctrlShow false} forEach _ctrlsSpawn;
  {_x ctrlShow true} forEach _ctrlsConsole;
  
  lbClear _consoleList;
  {
  _str = _x;
   if(count _x > 60) then {
   _str = _x select [0,60];
   };
   _index = _consoleList lbAdd _str;
   _consoleList lbSetData [_index,_x];
   _consoleList lbSetValue [_index,(count (profileNamespace getVariable ["ac_lastExecs",[]])) - _forEachIndex];
  }foreach (profileNamespace getVariable ["ac_lastExecs",[]]);
  lbSortByValue _consoleList;
  };

  case SETTINGS_MENU:{
  {_x ctrlShow false} forEach _ctrlsLogs;
  {_x ctrlShow false} forEach _ctrlsAdmin;
  {_x ctrlShow false} forEach _ctrlsConsole;
  {_x ctrlShow false} forEach _ctrlsSpawn;
  {_x ctrlShow true} forEach _ctrlsSettings;
  };

  case SPAWN_MENU:{
  {_x ctrlShow false} forEach _ctrlsLogs;
  {_x ctrlShow false} forEach _ctrlsAdmin;
  {_x ctrlShow false} forEach _ctrlsConsole;
  {_x ctrlShow false} forEach _ctrlsSettings;
  {_x ctrlShow true} forEach _ctrlsSpawn;

  [] call ac_fnc_updateSpawnedList;
  };
};