#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
REQUIRE_CLIENT;
REQUIRE_ADMIN;

_display = findDisplay 1234565;
_spectate_list = _display displayCtrl 1500;
_spectate_off_btn = _display displayCtrl 1600;

{
    _name = name _x;
    _location = text nearestLocation [ getPosATL _x, ""];
    _index = _spectate_list lbAdd _name;
    if !(_location isEqualTo "") then {
       _spectate_list lbSetTooltip [_index,_location];
    };
    _spectate_list lbSetData [_index,getPlayerUID _x];
    if(_x in (call ac_fnc_getAdmins)) then {
        _spectate_list lbSetColor [_index,[0, 255, 255 , 0.8]]; // red color
    };

}foreach allPlayers;
lbSort _spectate_list;

_spectate_list ctrlAddEventHandler["LBSelChanged",ac_fnc_spectateInList];
_spectate_off_btn ctrlAddEventHandler ["ButtonClick",ac_fnc_spectateOff];