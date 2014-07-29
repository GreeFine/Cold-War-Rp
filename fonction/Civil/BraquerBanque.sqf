_totalPol = {alive _x && (((side _x) == West) or ((side _x) == independent))} count [GIGN,GIGN_1,GIGN_2,GIGN_3,GIGN_4,GIGN_5,GIGN_6,GIGN_7,GIGN_8,GIGN_9,GIGN_10,GIGN_11,GIGN_12,GIGN_13,GIGN_14,Gendarme,Gendarme_1,Gendarme_2,Gendarme_3,Gendarme_4,Gendarme_5,Gendarme_6,Gendarme_7,Gendarme_8,Gendarme_9,Gendarme_10,Gendarme_11,Gendarme_12,Gendarme_13,Gendarme_14,Gendarme_15];
if (side player == West) exitWith {hint "C'est une blague ?"};
if (side player == independent) exitWith {hint "C'est une blague ?"};
if (primaryWeapon player == "") exitWith {hint "Tu n'as pas d'arme"};
if (BanqueBraquer == 1) exitWith {hint "La banque à déja ou est entrain d'être braquer"};
BanqueBraquer = 1;
publicVariable "BanqueBraquer";
conteur = 0;
Temps = (random 250)+300;
Argent = (random 500000)+300000;
if (_totalPol >= 4) then
	{
[[[],"fonction\serveur\Alarme.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString; _soundToPlay = _soundPath + "sons\Siren_long.ogg"; playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];sleep 8;playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];sleep 8;playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];playSound3D [_soundToPlay, player, false, getMarkerPos "Banque", 7, 0.5, 0];
	hint "Tu est entrain de forcer le Coffre reste a cote";
		while {conteur  < Temps} do
		{
			hint format ["%1 Seconde restante",(Temps - conteur)];
			if (alive player) then {conteur = conteur +10};
			if !(alive player) exitWith {hint "Tu est Mort"; [[[],"fonction\serveur\CoolDownBank.sqf"],"BIS_fnc_execVM",false,false] spawn BIS_fnc_MP;};
	 	    if !(player distance (getMarkerPos "Banque") < 20) exitWith {hint "Le Braquage à echouer ! Tu est parti trop loin"; [[[],"fonction\serveur\CoolDownBank.sqf"],"BIS_fnc_execVM",false,false] spawn BIS_fnc_MP;};
			if (conteur >= Temps) then  {player setVariable ["ArgentBraquage",Argent,true];[[[],"fonction\serveur\CoolDownBank.sqf"],"BIS_fnc_execVM",false,false] spawn BIS_fnc_MP;};
			if (conteur >= Temps) exitWith {hint format ["Tu as volé l'argent de la à la Banque enfui toi vite !"];[[[],"fonction\serveur\CoolDownBank.sqf"],"BIS_fnc_execVM",false,false] spawn BIS_fnc_MP;};
	 	  	 sleep 10;
		};

	} else {hint "Il n'y as pas asser de Gendarme"};





