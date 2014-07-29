if (vehicle player isKindOf "MAN") exitWith {hint "Je ne suis pas docteur !"};
if (vehicle player isKindOf "CAR") then
	{
		if(player getVariable "MonArgent" >= 1790) then
			{
				if (getDammage vehicle player > 0) then
					{
						player setVariable ["MonArgent",((player getVariable "MonArgent") - 1790)];
						player setVariable ["fuel", Fuel vehicle player];
						vehicle player setfuel 0;
						hint "On regarde ce que l'on peut faire ...";
						sleep 10;
						vehicle player setDamage 0;
						hint "Ta voiture est comme neuve cela ta couter 1790 euros";
						vehicle player setfuel (player getVariable "fuel");
					}
					else {hint "Repasse quand ta voiture sera endomager !"};

			} else {hint "tu n'as pas assez d'argent"};
	};
if (vehicle player isKindOf "Helicopter") then
		{
		if(player getVariable "MonArgent" > 7960) then
			{
				if (getDammage vehicle player >= 0) then
					{
						player setVariable ["MonArgent",((player getVariable "MonArgent") - 7960)];
						player setVariable ["fuel", Fuel vehicle player];
						vehicle player setfuel 0;
						hint "On regarde ce que l'on peut faire ...";
						sleep 10;
						vehicle player setDamage 0;
						hint "Ton Helicopter est comme neuf cela ta couter 7960 euros";
						vehicle player setfuel (player getVariable "fuel");
					}
					else {hint "Repasse quand ton Helicopter sera endomager !"};

			} else {hint "tu n'as pas assez d'argent"};
		};