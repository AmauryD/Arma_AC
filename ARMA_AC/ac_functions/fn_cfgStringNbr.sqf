#define PERCENT_ID 37
/****************************************************************************************
@created     : 15 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private "_string";
_string = [_this,0,"",[""]] call bis_fnc_param;
_compare = [_this,1,[],[[]]] call bis_fnc_param;

_string = (_string splitString "") apply {if(_x in ["0","1","2","3","4","5","6","7","8","9"]) then {"%"}else{_x};};
_string = _string joinString "";

_string in _compare