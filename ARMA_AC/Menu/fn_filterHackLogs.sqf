#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/

_display = findDisplay 1234561;
_logs_list = _display displayCtrl 1500;

_logs = ac_logs apply {_x}; // copy the array
reverse _logs;
lbClear _logs_list;

if(_this select 1 == 1) then {
	{
		_secRisk = _x select 0;
		_message = _x select 2;

	    _color = [_secRisk,"RGB"] call ac_fnc_getRiskColor;
	     
	    if(_secRisk >= RISK_HIGH) then {
	    _index = _logs_list lbAdd _message;
	    _logs_list lbSetValue [_index,_secRisk];
	    _logs_list lbSetColor [_index,_color];
		};
	}foreach _logs;
}else{
	{
		_secRisk = _x select 0;
		_message = _x select 2;

	    _color = [_secRisk,"RGB"] call ac_fnc_getRiskColor;
	     
	    _index = _logs_list lbAdd _message;
	    _logs_list lbSetValue [_index,_secRisk];
	    _logs_list lbSetColor [_index,_color];
	}foreach _logs;
};