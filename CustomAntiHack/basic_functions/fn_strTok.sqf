/**
private ["_string","_token","_tokened","_lastIndex"];
_string = toArray ([_this,0,"",[""]] call bis_fnc_param);
_token = toArray ([_this,1,"",[""]] call bis_fnc_param);

_tokened = [];
_lastIndex = 0;

while{_string find (_token select 0) != -1} do {
	_found = _string find (_token select 0);
	_string deleteAt _found;
	_tokened pushBack (toString (_string select [_lastIndex,_found]));
	_lastIndex = _found;
};

_tokened pushBack (toString (_string select [_lastIndex,count _string - 1]));

_tokened;
**/

_string = [_this,0,"",[""]] call bis_fnc_param;
_token = [_this,1,"",[""]] call bis_fnc_param;

_string splitString _token