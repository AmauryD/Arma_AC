/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_variables_list = _display displayCtrl 2103;

lbClear _variables_list;

{ 
    _index = _variables_list lbAdd _x;
    _variables_list lbSetData [_index,_x];
}forEach allVariables missionNamespace;

lbSort _variables_list;
