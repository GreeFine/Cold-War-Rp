if!(cursorTarget isKindOf "CAR") exitWith {hint "Pointe une Voiture"};
_veh = cursorTarget;
if (_veh distance player > 6) exitWith {hint "Le vehicule est trop loin"};
if (count crew _veh == 0) exitWith {hint "^Personne n'est dans le vehicule"};
vehicle _veh setVariable ["Sortir",1,true];
