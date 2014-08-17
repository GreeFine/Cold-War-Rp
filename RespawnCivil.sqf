waitUntil {alive player};
removeHeadgear player;

	player addAction ["Collecter Pomme","Economie\Resources.sqf",0,0,true,true,'','(player distance (getMarkerPos "Pommes_A")) < 20  && (vehicle player) == player && PAction'];
	player addAction ["Collecter Pomme","Economie\Resources.sqf",0,0,true,true,'','(player distance (getMarkerPos "Pommes_Ru")) < 20  && (vehicle player) == player && PAction'];
	player addAction ["Collecter Bois","Economie\Resources.sqf",1,0,true,true,'','(typeOf cursorTarget) == "Land_WoodenLog_F" && (vehicle player) == player && PAction'];
	player addAction ["Collecter Fer","Economie\Resources.sqf",3,0,true,true,'','(typeOf cursorTarget) == "sharpstone_01_lc" && (vehicle player) == player && PAction'];

	player addAction ["Récuperer Tortue",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},12,0,true,true,'','(player distance (getMarkerPos "Tortues_A")) < 750  && (typeOf cursorTarget) == "Turtle_F" && !(alive cursorTarget) && (vehicle player) == player'];
	player addAction ["Récuperer Tortue",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},12,0,true,true,'','(player distance (getMarkerPos "Tortues_1")) < 750  && (typeOf cursorTarget) == "Turtle_F" && !(alive cursorTarget) && (vehicle player) == player'];
	player addAction ["Récuperer Roussettes",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},13,0,true,true,'','(player distance (getMarkerPos "Roussettes")) < 750  && (typeOf cursorTarget) == "CatShark_F" && !(alive cursorTarget) && (vehicle player) == player'];
	player addAction ["Récuperer Roussettes",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},13,0,true,true,'','(player distance (getMarkerPos "Roussettes_1")) < 750  && (typeOf cursorTarget) == "CatShark_F" && !(alive cursorTarget) && (vehicle player) == player'];
	player addAction ["Récuperer Thons",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},9,0,true,true,'','(player distance (getMarkerPos "Thons")) < 750  && (typeOf cursorTarget) == "Tuna_F" && !(alive cursorTarget) && (vehicle player) == player'];
	player addAction ["Récuperer Thons",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},9,0,true,true,'','(player distance (getMarkerPos "Thons_1")) < 750  && (typeOf cursorTarget) == "Tuna_F" && !(alive cursorTarget) && (vehicle player) == player'];
	player addAction ["Récuperer Barracuda",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},8,0,true,true,'','(player distance (getMarkerPos "Thons_1")) < 750  && (typeOf cursorTarget) == "Ornate_random_F" && !(alive cursorTarget) && (vehicle player) == player'];
	player addAction ["Récuperer Barracuda",{execVM "Economie\Resources.sqf";deleteVehicle cursorTarget},8,0,true,true,'','(player distance (getMarkerPos "Thons_1")) < 750  && (typeOf cursorTarget) == "Ornate_random_F" && !(alive cursorTarget) && (vehicle player) == player'];



	player addAction ['Verouiller / Deverouiller','fonction\Serveur\Verouiller.sqf',[],7,true,true,'','(player distance cursorTarget) < 4 && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Ship" or cursorTarget iskindof "Air") && (cursorTarget getVariable "Proprietaire") == profileName'];
	player addAction ["Ressource dans le Vehicule","menu\farmVehicule.sqf",[],7,true,true,'','(player distance cursorTarget) < 4 && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Air" or cursorTarget iskindof "Ship")'];
    player addAction ["Recupere Ressource dans le Vehicule","menu\RecupfarmVehicule.sqf",[],7,true,true,'','(player distance cursorTarget) < 4 && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Air" or cursorTarget iskindof "Ship")'];
    player addAction ['Verouiller / Deverouiller','fonction\Serveur\Verouiller.sqf',[],7,true,true,'','(vehicle player) != player && (vehicle player getVariable "Proprietaire") == profileName'];

	player addAction ["Reparer","fonction\serveur\Reparer.sqf",[],0,true,true,'','(player distance (getMarkerPos "Reparer")) < 7'];

	player addAction ["Reparer Mon Vehicule","fonction\Civil\repairkit.sqf",[],0,true,true,'','"ToolKit" in backpackItems player && cursorTarget isKindOf "CAR" or cursorTarget isKindOf "Helicopter"'];

	player addAction ["Menu Garage","fonction\Civil\CVehiculeS.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Public")) < 15 && SaveGarage'];

	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Public")) < 15 && SaveGarage'];

	player addAction ["Menu Garage","Menu\MenuHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_C")) < 15 && SaveGarage'];

	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_C")) < 15 && SaveGarage'];

	player addAction ["Menu Garage","Menu\MenuHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_A")) < 15 && SaveGarage'];

	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_A")) < 15 && SaveGarage'];

	player addAction ["Menu Garage","Menu\MenuHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_Famille")) < 15 && SaveGarage'];

	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_Famille")) < 15 && SaveGarage'];

	player addAction ["Menu Garage","Menu\MenuHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_Famille_1")) < 15 && SaveGarage'];

	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_Famille_1")) < 15 && SaveGarage'];


			player addAction ["Menu Garage","Menu\MenuGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Public_1")) < 15 && (SaveGarage)'];
	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Public_1")) < 15 && (SaveGarage)'];
			player addAction ["Menu Garage","Menu\MenuGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Public_2")) < 15 && (SaveGarage)'];
	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Public_2")) < 15 && (SaveGarage)'];
				player addAction ["Menu Garage","Menu\MenuGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Famille_1")) < 15 && (SaveGarage)'];
	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Famille_1")) < 15 && (SaveGarage)'];
					player addAction ["Menu Garage","Menu\MenuGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Famille_2")) < 15 && (SaveGarage)'];
	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Parking_Famille_2")) < 15 && (SaveGarage)'];

	player addAction ["<t color='#084B8A'>Inventaire Personel</t>","Menu\MenuJoueur.sqf"];

	player addAction ["Se rafraichir",{player setVariable ["Boire",100]},[],0,true,true,'','(player == vehicle player && typeof cursorTarget == "Land_WaterBarrel_F")'];

	//ATM Action global
	player addAction ["<t color='#084B8A'>Distributeur</t>",{[] execVM "MenuBanque.sqf"},[],0,true,true,'','player == vehicle player && (typeof cursorTarget == "Land_Atm_01_F" or typeof cursorTarget == "Land_Atm_02_F")'];