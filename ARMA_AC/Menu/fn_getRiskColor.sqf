#include "macros.h"
/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
private["_mode","_risk","_color"];

_risk = param[0,0,[0]];
_mode = param[1,"HTML",[""]];

switch (_mode) do { 
	case "RGB" : {
       _color = switch(_secRisk) do {
       case RISK_LOW:{RISK_COLOR_LOW_RGB};
       case RISK_HIGH:{RISK_COLOR_HIGH_RGB};
       case RISK_HACK:{RISK_COLOR_HACK_RGB};
       };
	}; 
	case "HTML" : {
       _color = switch(_secRisk) do {
       case RISK_LOW:{RISK_COLOR_LOW};
       case RISK_HIGH:{RISK_COLOR_HIGH};
       case RISK_HACK:{RISK_COLOR_HACK};
       };
	}; 
};

_color