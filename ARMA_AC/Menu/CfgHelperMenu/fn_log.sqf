/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_toLog = param [0,"",[""]];

_display = findDisplay 12341;

_logList = _display displayCtrl 1507;

_i  =_logList lbAdd _toLog;
_logList lbSetValue [_i,0 - lbSize _logList];
lbSortByValue _logList; 