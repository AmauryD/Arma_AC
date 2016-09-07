/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_mode = param [0,0,[0]];

switch (_mode) do { 
	case 1 : {
	_display = findDisplay 12341;
	_variables_list = _display displayCtrl 2103;
    _allowed_variables_list = _display displayCtrl 1504;

    _variable = _variables_list lbData (lbCurSel _variables_list);

    if(_variable isEqualTo "") exitWith {};
    
    ["variables_allowed",_variable] call ac_fnc_setToConfig;
    [_variables_list,"DATA",_variable] call ac_fnc_lbDeleteAt;
    _index = _allowed_variables_list lbAdd _variable;
    _allowed_variables_list lbSetData [_index,_variable];
    [format["Variable %1 has been added",_variable]] call ac_fnc_logCfg;
    lbSort _allowed_variables_list;
	}; 
	case 2 : { 
	  _display = findDisplay 12341;
	  _variables_list = _display displayCtrl 2103;
      _allowed_variables_list = _display displayCtrl 1504;
      _allVars = [_variables_list,"DATA"] call ac_fnc_lbToArray;
	  {
        if !(_x isEqualTo "") then {   
	    ["variables_allowed",_x] call ac_fnc_setToConfig;
        [_variables_list,"DATA",_x] call ac_fnc_lbDeleteAt;
        _index = _allowed_variables_list lbAdd _x;
        _allowed_variables_list lbSetData [_index,_x];
         };
	  }forEach _allVars;
      [format["%1 variables has been added",count _allVars]] call ac_fnc_logCfg;
      lbSort _allowed_variables_list;
    }; 
	case 3 : { 
    disableSerialization;   
	 _display = findDisplay 12341;
     _variables_list = _display displayCtrl 2103;
    _allowed_variables_list = _display displayCtrl 1504;    

    _val = ["Enter the variable name",_display] call ac_fnc_editDialog;
    if(_val isEqualTo "") exitWith {};

    ["variables_allowed",_val] call ac_fnc_setToConfig;
    [_variables_list,"DATA",_val] call ac_fnc_lbDeleteAt;
    _index = _allowed_variables_list lbAdd _val;
    _allowed_variables_list lbSetData [_index,_val];     
    [format["Variable %1 has been added",_val]] call ac_fnc_logCfg;
    lbSort _allowed_variables_list;
    };
    case 4 : {
        _display = findDisplay 12341;
	    _variables_list = _display displayCtrl 2103;
        _allowed_variables_list = _display displayCtrl 1504;
        {
        if !(_x in getArray (missionConfigFile >> "antiCheat" >> "variablesCfg" >> "variables" >> "allowed")) then {
            ["variables_allowed",_x] call ac_fnc_setToConfig;
            [_variables_list,"DATA",_x] call ac_fnc_lbDeleteAt;
            _index = _allowed_variables_list lbAdd _x;
            _allowed_variables_list lbSetData [_index,_x];
        };
        }forEach ([_variables_list,"DATA"] call ac_fnc_lbToArray);
        lbSort _allowed_variables_list;
    };
};