/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_listBox","_listBoxArray","_val","_mode","_key"];
_listBox = param [0,controlNull,[controlNull]];
_mode = param [1,"",[""]];
_key = param [2,"",["",0]];
_listBoxArray = [];



switch (_mode) do { 
    case "VALUE" : {
        if !(_key isEqualType 0) exitWith {diag_log "Key must be of the same type than the mode."};
		for "_i" from 0 to lbSize _listBox do {
		   _val = _listBox lbValue _i;
           if(_val isEqualTo _key) then {
              _listBox lbDelete _i;
           };
		};
    };
    case "DATA" : {
        if !(_key isEqualType "") exitWith {diag_log "Key must be of the same type than the mode."};
		for "_i" from 0 to lbSize _listBox do {
		   _val = _listBox lbData _i;
           if(_val isEqualTo _key) then {
              _listBox lbDelete _i;
           };
		};
    };
    case "TEXT" : {
        if !(_key isEqualType "") exitWith {diag_log "Key must be of the same type than the mode."};
		for "_i" from 0 to lbSize _listBox do {
		    _val = _listBox lbText _i;
           if(_val isEqualTo _key) then {
              _listBox lbDelete _i;
           };
		};
    };
    default {
        if !(_key isEqualType "") exitWith {diag_log "Key must be of the same type than the mode."};
        for "_i" from 0 to lbSize _listBox do {
			_val = _listBox lbText _i;
           if(_val isEqualTo _key) then {
              _listBox lbDelete _i;
           };
		};
    };
};

_listBoxArray