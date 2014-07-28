if((cursortarget distance player) >= 3) exitWith {hint "La personne est trop loin pour être Porter !"};
_unit = cursorTarget;
if(isNull _unit) exitWith {hint "Personne n'est selectionné pour être Porter !"};
if !(_unit in playableUnits) exitWith {hint "Personne n'est selectionné pour être Porter !"};
if (side _unit == West) exitWith {hint "Tu ne porter un collegue"};
if((_unit) isKindOf "Man") then {
	_unit attachTo [player,[0,1,0]];
	player setVariable ["CivilPorter",_unit];
								} else {hint "Personne n'est selectionné pour être Porter !"};
