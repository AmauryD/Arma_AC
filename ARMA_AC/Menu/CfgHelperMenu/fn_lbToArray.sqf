/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private ["_listBox","_listBoxArray"];
_listBox = param [0,controlNull,[controlNull]];
_mode = param [1,"",[""]];
_listBoxArray = [];

switch (_mode) do { 
    case "VALUE" : {
		for "_i" from 0 to lbSize _listBox do {
           _listBoxArray pushBack (_listBox lbValue _i);
		};
    };
    case "DATA" : {
		for "_i" from 0 to lbSize _listBox do {
		   _listBoxArray pushBack (_listBox lbData _i);
		};
    };
    case "TEXT" : {
		for "_i" from 0 to lbSize _listBox do {
			_listBoxArray pushBack (_listBox lbText _i);
		};
    };
    default {
        for "_i" from 0 to lbSize _listBox do {
			_listBoxArray pushBack (_listBox lbText _i);
		};
    };
};

_listBoxArray