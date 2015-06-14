#include "macros.h"
/*
By [utopia] Amaury
14/05/2015
*/
#define ADD_ACTION(STRING,VAL) _index=_Aactions lbAdd STRING;_Aactions lbSetValue [_index,VAL]
private "_Aactions";
disableSerialization;
_list = _this select 0;
_index = _this select 1;

_display = findDisplay 12340;
_Aactions = _display displayCtrl 12347;

_plist = _display displayCtrl 12341;
_uid = _plist lbData (lbCurSel _plist);
_player = [_uid] call ac_fnc_findPlayerByUid;
if(_player isEqualTo objNull) exitWith {};
lbClear _Aactions;

if(!(_player isEqualTo player)) then {
    ADD_ACTION("teleport to me",0);
    ADD_ACTION("teleport to him",1);
    ADD_ACTION("heal",2);
    ADD_ACTION("repair",3);
    ADD_ACTION("kill",4);
    if(cameraOn != player) then {
    ADD_ACTION("spectating",5);
    }else{
    ADD_ACTION("spectate",5);
    ADD_ACTION("kick",6);
    ADD_ACTION("ban",7);
    };
}else{
    ADD_ACTION("tp",0);
    ADD_ACTION("heal",1);
    ADD_ACTION("repair",2);
    ADD_ACTION("suicide",3);
    ADD_ACTION("cash 100K",4);
    ADD_ACTION("cash 1K",5);
    ADD_ACTION("god mode",6);
    if(ac_god_active) then {
    _Aactions lbSetColor [_index, [0, 255, 55, 0.9]];
    };
    ADD_ACTION("god mode vehicule",7);
    if(ac_god_v_active && ac_god_v_veh isEqualTo (vehicle player)) then {
    _Aactions lbSetColor [_index, [0, 255, 55, 0.9]];
    };
    ADD_ACTION("arsenal",8);
    ADD_ACTION("spectating off",10);
    ADD_ACTION("free camera",11);
    ADD_ACTION("kick",12);
    ADD_ACTION("ban",13);
};