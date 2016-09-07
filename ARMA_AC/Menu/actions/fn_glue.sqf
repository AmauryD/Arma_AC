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
if(!alive _player) exitWith {hintSilent format["%1 is dead",name _player]};
_attached = attachedTo _player;
if !(isNull _attached) exitWith {detach _player;deleteVehicle _attached;hintSilent "You have been unglued of something";};
_obj = "Land_ClutterCutter_small_F" createVehicle (getPos _player);
_player attachTo [_obj,[0,0,0]];
hintSilent format["%1 can't move now.",name _player];