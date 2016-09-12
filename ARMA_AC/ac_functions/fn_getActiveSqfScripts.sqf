diag_activeSQFScripts apply {
	_path = _x select 1;
	_path = _path splitString "\";
	_index = -1;

	if !(isMultiplayer) then {
	_index = _path find format["%1.%2",missionName,worldName];
	}else{
	_index = _path find format["%1.%2","__CUR_MP",worldName];
	};

	if(_index isEqualTo -1) then { 
		_index = _path find "A3";
		if(_index isEqualTo -1) then {
			_path= _path joinString "\";
			[_x select 0,_path,_x select 2,_x select 3,"EXTERNAL"]
		}else{
			if(_path select (_index + 1) in ["functions_f","functions_f_bootcamp","functions_f_epa","functions_f_epc","functions_f_exp_a","ui_f","ui_f_bootcamp","ui_f_data","ui_f_exp_a","uifonts_f"]) then {
				_path= _path joinString "\";
				[_x select 0,_path,_x select 2,_x select 3,"A3"]
			}else{
				[_x select 0,_path,_x select 2,_x select 3,"A3_UNKNOWN"]
			};
		};
	}else{
		_path = _path select [_index,count _path - 1];
		_path= _path joinString "\";
		[_x select 0,_path,_x select 2,_x select 3,"INTERNAL"]
	};
};

