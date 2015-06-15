#define PERCENT_ID 37
/*
By [utopia] Amaury
created : 15/06/2015
comments : seems to be kind of heavy (+-38ms) , don't use that in a loop ...
*/
private "_string";
_string = toArray ([_this,0,"",[""]] call bis_fnc_param);
_compare = [_this,1,[],[[]]] call bis_fnc_param;

for "_i" from 48 to 57 do { // numbers id 0-10
    private "_result";
	_result = _string find _i;
	while{_result != -1} do {
    _string set [_result,PERCENT_ID];
	};
};

(toString _string) in _compare