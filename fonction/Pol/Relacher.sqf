if((cursortarget distance player) >= 6) exitWith {};
_unit = (player getVariable "CivilPorter");
if(isNull _unit) exitWith {};
if((_unit) isKindOf "Man") then {detach _unit;} else {hint "Personne n'est selectionné pour être détacher !"};
player setVariable ["CivilPorter",nil];
