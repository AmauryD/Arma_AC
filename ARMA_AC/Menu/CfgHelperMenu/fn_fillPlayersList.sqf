/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;

_playersCbBox = _display displayCtrl 2101;

lbClear _playersCbBox;

{
   _index = _playersCbBox lbAdd (name _x);
   _playersCbBox lbSetData [_index,getPlayerUID _x];
}forEach allPlayers;

lbSort _playersCbBox;