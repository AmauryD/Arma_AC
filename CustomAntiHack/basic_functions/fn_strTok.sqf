private ["_string","_token","_tokened"];
_string = toArray ([_this,0,"",[""]] call bis_fnc_param);
_token = toArray ([_this,1,"",[""]] call bis_fnc_param);

_tokened = [];

while{_string find (_token select 0) != -1} do {
	_found = _string find (_token select 0);
	_string deleteAt _found;
	_tokened pushBack (toString _found);
};

_tokened