		player addAction ["Menu Garage","Menu\MenuGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "GIGN_Hangar")) < 15 && Save == 1'];
		player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "GIGN_Hangar")) < 15 && Save == 1'];
		player addAction ["Menu Garage","Menu\MenuHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_GIGN")) < 15 && Save == 1'];
		player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_GIGN")) < 15 && Save == 1'];

	player addAction ['Verouiller / Deverouiller','fonction\Serveur\Verouiller.sqf',[],7,true,true,'','(player distance cursorTarget) < 4 && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Helicopter" or cursorTarget iskindof "Ship") && (cursorTarget getVariable "Proprietaire") == profileName'];
	player addAction ["Ressource dans le Vehicule","menu\farmVehicule.sqf",[],7,true,true,'','(player distance cursorTarget) < 4 && (side player == civilian) && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Helicopter" or cursorTarget iskindof "Ship")'];
    player addAction ["Recupere Ressource dans le Vehicule","menu\RecupfarmVehicule.sqf",[],7,true,true,'','(player distance cursorTarget) < 4 && (side player == civilian) && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Helicopter" or cursorTarget iskindof "Ship")'];
    player addAction ['Verouiller / Deverouiller','fonction\Serveur\Verouiller.sqf',[],7,true,true,'','(vehicle player) != player && (vehicle player getVariable "Proprietaire") == profileName'];

	player addAction ["Reparer Mon Vehicule",{player action ["repairVehicle", cursorTarget];sleep 10;cursorTarget setDamage 0},[],0,true,true,'','cursorTarget isKindOf "CAR"'];