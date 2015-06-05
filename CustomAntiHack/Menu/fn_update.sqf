#include "macros.h"
/*
By [utopia] Amaury
14/05/2015
*/
#define ADMIN_MENU 1
#define LOGS_MENU 0
#define CONSOLE_MENU 2
#define SETTINGS_MENU 3

private["_display","_list","_logs","_modeCb","_consoleList","_admins","_mode","_color","_logsInfos","_filterLowLogs","_Aactions","_codeInput","_codeInputButton"];
disableSerialization;
_mode = _this select 0;

_display = findDisplay 12340;
if(isNull _display) exitWith {};

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

switch(_mode) do {
  case LOGS_MENU:{
    _list ctrlShow false;
    _Aactions ctrlShow false;
    _logs ctrlShow true;
    _logsInfos ctrlShow true;
    _codeInput ctrlShow false;
    _filterLowLogs ctrlShow false;
    _filterLowLogsText ctrlShow false;
    _showMess ctrlShow false;
    _showMessText ctrlShow false;
    _consoleList ctrlShow false;
    _codeInputButton ctrlShow false;
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
    _list ctrlShow true;
    _Aactions ctrlShow true;
    _logs ctrlShow false;
        _filterLowLogs ctrlShow false;
    _filterLowLogsText ctrlShow false;
    _consoleList ctrlShow false;
        _showMess ctrlShow false;
    _showMessText ctrlShow false;
    _logsInfos ctrlShow false;
    _codeInput ctrlShow false;
    _codeInputButton ctrlShow false;
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
  _list ctrlShow false;
  _Aactions ctrlShow false;
  _consoleList ctrlShow true;
  _logs ctrlShow false;
  _logsInfos ctrlShow false;
      _showMess ctrlShow false;
    _showMessText ctrlShow false;
      _filterLowLogs ctrlShow false;
    _filterLowLogsText ctrlShow false;
  _codeInput ctrlShow false;
  _codeInput ctrlShow true;
  _codeInputButton ctrlShow true;
  
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
  _list ctrlShow false;
  _Aactions ctrlShow false;
  _consoleList ctrlShow false;
  _logs ctrlShow false;
  _logsInfos ctrlShow false;
  _codeInput ctrlShow false;
  _codeInput ctrlShow false;
  _codeInputButton ctrlShow false;
      _showMess ctrlShow true;
    _showMessText ctrlShow true;
  _filterLowLogs ctrlShow true;
  _filterLowLogsText ctrlShow true;
  };
};