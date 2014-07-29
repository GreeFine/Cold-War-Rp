if((cursorTarget distance player) >= 6) exitWith {hint "La personne est trop loin pour être fouiller !"};
	unit = cursorTarget;
if(isNull unit) exitWith {hint "Personne n'est selectionné pour être fouiller !"};
if(side unit == West) exitWith {hint "Impossible ! Tu ne peux pas fouiller un collègue !"};
if (unit isKindOf "CAR") exitWith { hint format ["Ce vehicule apartien à %1",(unit getVariable "Proprietaire")]};
		hint "recherche de en cours";
	sleep 3;
	_separator1 = parseText "<br />--------------------------------------------------<br />";
	 hint format ["Inventaire %1 %2 Argent : %3 %2 Permis Voiture : %4 %2 Permis Camion %7 %2 Permis Bateau %8 %2 Permis Pilote %9 %2 Permis d'armes %10 %2 Heroine : %5 %2 Heroine Transformer : %6 %2", (name unit),_separator1,(unit getVariable "MonArgent"),(unit getVariable "permisVoiture"),(unit getVariable "Heroine"),(unit getVariable "HeroineTransformer"),(unit getVariable "PermisPoidLourd"),(unit getVariable "PermisBateau"),(unit getVariable "PermisPilote"),(unit getVariable "permisArme")];