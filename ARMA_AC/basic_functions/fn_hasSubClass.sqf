/****************************************************************************************
@created     : 12 may 2015
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_configEntry = [_this,0,configFile,[configFile]] call bis_fnc_param;

count ("true" configClasses _configEntry) > 0