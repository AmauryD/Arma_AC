/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
if !(ac_god select 0) then {
	ac_god set [0,true];
	_id = player addEventHandler ["handleDamage", {false}];
	ac_god set [1,_id];
	hintSilent "God mode enabled.";
}else{
	ac_god set [0,false];
	player removeEventHandler ["HandleDamage",(ac_god select 1)];
	ac_god set [1,0];
	hintSilent "God mode disabled.";
};
