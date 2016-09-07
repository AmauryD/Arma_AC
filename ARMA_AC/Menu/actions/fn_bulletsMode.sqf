/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
if !(isNil "BIS_tracedShooter") then {
    [player, 0] call BIS_fnc_traceBullets;
    hintSilent "Bullets tracing disabled";
    BIS_tracedShooter = nil;
}else{
	[player, 20] call BIS_fnc_traceBullets;
	hintSilent "Bullets tracing enabled";
};