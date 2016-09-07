/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 1234562;
_players_list = _display displayCtrl 1500;

_data = _players_list lbData (lbCurSel _players_list);
if(_data isEqualTo "") exitWith {hintSilent "Please select a player."};
_player = [_data] call ac_fnc_findPlayerByUID;
if(vehicle _player isEqualTo _player) exitWith {hintSilent format ["%1 is not in a vehicle",name _player]};

(vehicle _player) setDammage 0;
hintSilent format ["The vehicle of %1 has been repaired",name _player];