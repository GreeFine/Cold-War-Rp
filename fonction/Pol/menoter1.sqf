if((cursortarget distance player) >= 3) exitWith {hint "La personne est trop loin pour être menotté !"};
unit = cursorTarget;
if((unit getVariable "Menoter") == 1) exitWith {hint "La personne est déja menotté !"};
if(isNull unit) exitWith {hint "Personne n'est selectionné pour être menotté !"};
if(side unit == West) exitWith {hint "Impossible ! Tu ne peux pas arreter de collègue !"};
if(player == unit) exitWith {};
	cursorTarget setVariable ["Menoter", 1,true];
	hint format ["%1 est maintenan Menoter",(name unit)];