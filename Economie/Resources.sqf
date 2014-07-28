_Selecteur = (_this select 3);

_Resource = RessourceArray select _Selecteur;
_class = _Resource select 0;
_Poids = _Resource select 1;
_Temps = _Resource select 2;

if (PAction) then
	{
		if (isnil {player getVariable _class}) then
			{
				PAction = false;
				Sleep _Temps;
				if !(alive player) exitWith {PAction = true};
				player setVariable [_class, 1,true];
				player setVariable ["Poids", (player getVariable "Poids") +_Poids,true];
				hint format ["Vous avez %1 %2",(player getVariable _class),(_class),true];
				PAction = true;
			}
			 else
				{
				if ((Player getVariable "Poids")+_Poids < 100) then
					{
						PAction = false;
						Sleep _Temps;
						if !(alive player) exitWith {PAction = true};
						player setVariable [_class, (player getVariable _class) +1,true];
						player setVariable ["Poids", (player getVariable "Poids") +_Poids,true];
						hint format ["Vous avez %1 %2",(player getVariable _class),(_class)];
						PAction = true;
					}
				 		else  {hint "Votre inventaire est plein";};
				};
	} else {Hint "Tu est deja entrain d'effectuer une action";};