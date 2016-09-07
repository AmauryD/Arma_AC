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

if((getPosATL _player select 2) > 3) then {
_result = [format["Are you sure? , Player %1 is in altitude",name _player], "Confirm", true, true] call BIS_fnc_guiMessage;
};

vehicle player setPos (getPos _player);
hintSilent format ["You have been teleported to %1",name _player];