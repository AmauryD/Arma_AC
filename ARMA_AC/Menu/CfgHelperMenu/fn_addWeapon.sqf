/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_display = findDisplay 12341;
_allowed_weapons_list =  _display displayCtrl 1500;
_w_list = _display displayCtrl 2100;

_weapon = _w_list lbData (lbCurSel _w_list);

if(_weapon isEqualTo "") exitWith {};
 
["allowed_Weapons",_weapon] call ac_fnc_setToConfig;
[_w_list,"DATA",_weapon] call ac_fnc_lbDeleteAt;

_weaponName = getText (configFile >> "CfgWeapons" >> _weapon >> "displayName");
_weaponPicture = getText (configFile >> "CfgWeapons" >> _weapon >> "picture");

_index = _allowed_weapons_list lbAdd _weaponName;
_allowed_weapons_list lbSetData [_index,_weapon];
_allowed_weapons_list lbSetPicture [_index,_weaponPicture];
_allowed_weapons_list lbSetTooltip [_index,_weapon];


[format["Weapon %1 has been added",_weaponName]] call ac_fnc_logCfg;

lbSort _allowed_weapons_list;