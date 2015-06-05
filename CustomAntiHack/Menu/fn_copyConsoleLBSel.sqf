disableSerialization;
_list = _this select 0;
_index = _this select 1;

_display = findDisplay 12340;
_codeInput = _display displayCtrl 12348;
_code = _list lbData _index;

_codeInput ctrlSetText _code;
