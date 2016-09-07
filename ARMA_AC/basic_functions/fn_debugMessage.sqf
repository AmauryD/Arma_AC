#include "macros.h"
/****************************************************************************************
@created     : 16 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private "_text";
_text = param [0,"",[""]];

if(DEBUG) then {
	systemChat format ["[AC DEBUG|TIME %1] : %2",diag_tickTime,_text];
	diag_log format ["[AC DEBUG|TIME %1] : %2",diag_tickTime,_text];
};
