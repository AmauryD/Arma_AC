#include "macros.h"
/****************************************************************************************
@created     : 30 august 2016
@modified    : 06 september 2016
@author      : [utopia] Amaury
@description : filtering the chat , despotic system
*****************************************************************************************/


private ["_forbidden","_ctrl","_text"];

_ctrl = findDisplay 24 displayCtrl 101;
_text = ctrlText _ctrl;
_words = _text splitString " ";
_forbidden = getArray (AC_CFG_CHAT >> "badWords");

if(CHAT_REMOVE_URL) then {
   {
      private "_t";
      _t = _x;
       {
          if(_x find _t != -1) then {
              _words deleteAt _forEachIndex;
              _text = _words joinString " ";
          };
       }foreach _words;
   }foreach [".org",".io",".en",".fr","www.","http://","https://",".com"]; // you can add some if you want ...
};

if(CHAT_REMOVE_IP) then {
	_anotherNew = (_text splitString "") apply {if(_x in ["0","1","2","3","4","5","6","7","8","9"]) then {"%"}else{_x};};
	_anotherNew = _anotherNew joinString "";_anotherNew = _anotherNew splitString " "; //yes ...
	{
	_splitted = _x splitString "";
	_numberofPercents = {_x == "%"}count _splitted;
	_numberofPoints = {_x == "."}count _splitted;

		if(_numberofPoints >= 3 && _numberofPercents >= 4) then { //ipv4 format 
           _words deleteAt _forEachIndex;
           _text = _words joinString " ";
		};
    }foreach _anotherNew;
};


{
     private "_t";
     _t = _x;
      {
        if(_x find _t != -1) then {
           _words deleteAt _forEachIndex;
           _text = _words joinString " ";
        };
     }foreach _words;
}foreach _forbidden; // you can add some if you want ...

_ctrl ctrlSetText _text;