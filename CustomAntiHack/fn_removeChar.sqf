/*
By [utopia] Amaury
12/05/2015
*/

private ["_string","_char"];
_string = toArray ([_this,0,"",[""]] call bis_fnc_param);
_char = toArray ([_this,1,"",[""]] call bis_fnc_param);

while{_string find (_char select 0) != -1} do {
	_string deleteAt (_string find (_char select 0));
};

toString _string