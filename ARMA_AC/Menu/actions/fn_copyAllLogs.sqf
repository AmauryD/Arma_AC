/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private["_display","_logs","_finalText"];
_display = findDisplay 1234561;
_logs = _display displayCtrl 1500;
_finalText = composeText [""];

_allLogs = [_logs,"TEXT"] call ac_fnc_lbToArray;

if(count _allLogs <= 1) exitWith {hintSilent "No logs to copy"};

{
   _finalText = composeText[_finalText,_x,lineBreak];
}foreach _allLogs;

copyToClipboard str _finalText;