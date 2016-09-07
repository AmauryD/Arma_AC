/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private["_display","_logs","_finalText"];
_display = findDisplay 1234561;
_logs = _display displayCtrl 1500;
_finalText = _logs lbText (lbCurSel _logs);

if(_finalText isEqualTo "") exitWith {hintSilent "No log selected"};

copyToClipboard str _finalText;