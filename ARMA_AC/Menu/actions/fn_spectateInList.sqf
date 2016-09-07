/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 1234565;
_players_list = _display displayCtrl 1500;

_data = _players_list lbData (lbCurSel _players_list);
_player = [_data] call ac_fnc_findPlayerByUID;

vehicle _player switchCamera "EXTERNAL";
hintSilent format ["Spectating %1 ...",name _player];