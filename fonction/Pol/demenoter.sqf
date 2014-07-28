if((cursortarget distance player) >= 6) exitWith {hint "La personne est trop loin pour être Demenotté !"};
unit = cursorTarget;
if((unit getVariable "Menoter") == 0) exitWith {hint "n'est pas Menoter"};
if(isNull unit) exitWith {hint "Personne n'est selectionné pour être Demenotté !"};
	cursorTarget setVariable ["Menoter", 0,true];
	hint format ["%1 n'est plus Menoter",(name cursorTarget)];