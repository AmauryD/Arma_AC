#include "macros.h"
/****************************************************************************************
@created     : 9 september 2016
@modified    : --
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_action = param[0,"NOTHING",[""]];

switch (_action) do { 
	case "NOTHING" : {
	   //so ... what can we do ?
	}; 
	case "KICK" : {
       failMission "LOSER"; 
    }; 
	case "CRASH" : {
       [] call compile preprocessFileLineNumbers (AC_FOLDER + "\crash.sqf");
	}; 
};