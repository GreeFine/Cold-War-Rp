afk = false;
camp1 = 0;
camp2 = 0;
while {true} do {
	camp1 = (position player);
	sleep 800;
	camp2 = (position player);
	if (camp1 distance camp2 < 5) then {afk =true;hint "Vous allez être bientôt considére comme afk"};
		if (afk) then {
			Camp1 = (position player);
			sleep 100;
			Camp2 = (position player);
			if (Camp1 distance Camp2 < 5) exitWith {endMission "AFK"};
			afk = false
		};
};
