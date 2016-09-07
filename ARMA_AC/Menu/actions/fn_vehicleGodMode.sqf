/****************************************************************************************
@created     : 0? september 2016
@modified    : 0? september 2016
@author      : [utopia] Amaury
@description : none
*****************************************************************************************/
_vehicle = vehicle player;

if(vehicle player isEqualTo player) exitWith {hintSilent "You are not in a vehicle."};

if(_vehicle getVariable ["ac_god_v",false]) then {
   _vehicle removeAllEventHandlers "HandleDamage";
   _vehicle setVariable ["ac_god_v",false,false];
   hintSilent "Your vehicle is now vulnerable.";
}else{
   _vehicle addEventHandler ["HandleDamage",{false}];
   _vehicle setVariable ["ac_god_v",true,false];
   hintSilent "Your vehicle is now invincible.";
};