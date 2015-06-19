private ["_namespaceName","_acloggerFilterOutput","_allowedvars","_namespace"];
disableSerialization;
_display = findDisplay 12340;
_acloggerNamespaceType = _display displayCtrl 12361;
_acloggerFilterOutput = _display displayCtrl 12362;

_namespaceName = _acloggerNamespaceType lbData (lbCurSel _acloggerNamespaceType);
_namespace = call compile _namespaceName;
if(isnil "_namespace") exitWith {hint "please select a namespace"};
"aclogger" callExtension format ["write;output_%1.log;%2",_namespaceName,format["vars_%1 = {",_namespaceName]];

_allowedvars = getArray (missionConfigFile >> "AntiCheat" >> "variablesCfg" >> "variables" >> "allowed");
{
	if(cbChecked _acloggerFilterOutput && _namespaceName isEqualTo "missionNamespace") then {
        if(!(_x in _allowedvars)) then {
        	if(!([_x,_allowedvars] call ac_fnc_cfgStringNbr)) then {
        	"aclogger" callExtension format ["append;output_%1.log;""%2"",",_namespaceName,_x];
            };
        };
    }else{
    "aclogger" callExtension format ["append;output_%1.log;""%2"",",_namespaceName,_x];
    };
}foreach allvariables _namespace;
"aclogger" callExtension format ["append;output_%1.log;%2",_namespaceName,"""NULL""};"];