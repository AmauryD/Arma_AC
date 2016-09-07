/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
disableSerialization;
_display = findDisplay 1234564;
_history_list = _display displayCtrl 1500;

_history = (profileNamespace getVariable "ac_console_history") apply {_x};
reverse _history;

lbClear _history_list;
{
     _index = _history_list lbAdd _x;
     _history_list lbSetData [_index,_x];
}forEach _history;