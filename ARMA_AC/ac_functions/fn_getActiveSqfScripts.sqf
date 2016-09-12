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
		_path= _path joinString "\";
		if !(_x select 1 isEqualTo "") then {
			if(_path select [0,3] isEqualTo "A3\") then {
		 		[_x select 0,_path,_x select 2,_x select 3,"A3"]
		 	}else{
	            [_x select 0,_path,_x select 2,_x select 3,"EXTERNAL"]
	        };
	    }else{
				[_x select 0,_x select 1,_x select 2,_x select 3,"UNKNOWN"]
		};
	}else{
		_path = _path select [_index,count _path - 1];
		_path= _path joinString "\";
		[_x select 0,_path,_x select 2,_x select 3,"INTERNAL"]
	};
};

