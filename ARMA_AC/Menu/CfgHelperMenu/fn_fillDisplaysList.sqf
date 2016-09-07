/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;

_displays_list = _display displayCtrl 1506;

lbClear _displays_list;
{
   _index = _displays_list lbAdd (_x select 0);
   _displays_list lbSetValue [_index,_x select 1];
   _displays_list lbSetTooltip [_index,format ["ID : %1",_x select 1]];
}forEach (call ac_fnc_allGameDisplays);
lbSort _displays_list;