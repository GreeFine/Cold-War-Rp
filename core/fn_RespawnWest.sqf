waitUntil {alive player};

	 removeVest player;
	 player removeMagazine "HandGrenade";
	 player addAction ["<t color='#B40404'>Porter</t>","fonction\Pol\Porter.sqf"];
	 player addAction ["<t color='#0F3F99'>Relacher</t>","fonction\Pol\Relacher.sqf"];
	 player addAction ["<t color='#B40404'>Menoter</t>","fonction\Pol\Menoter1.sqf"];
	 player addAction ["<t color='#0F3F99'>Demenoter</t>","fonction\Pol\demenoter.sqf"];
	 player addAction ["<t color='#B40404'>Metre Civil dans le vehicule</t>","fonction\Pol\MetreVehicule.sqf"];
	 player addAction ["<t color='#0F3F99'>Eject du vehicule</t>","fonction\Pol\SortirVehicule.sqf"];
	 player addAction ["<t color='#FFFF00'>Fouiller</t>","fonction\Pol\Fouiller.sqf"];
	 player addAction ["<t color='#FFFF00'>Mettre en Fouriere</t>","fonction\Pol\Fouriere.sqf"];
	 player addAction ["<t color='#FFFF00'>Mettre une amende</t>","Menu\Amende.sqf"];
	 player addAction ["<t color='#FFFF00'>Mettre en Prison</t>","Menu\Prison.sqf"];
	 player addAction ["<t color='#084B8A'>Inventaire</t>","Menu\MenuJoueur.sqf"];
	 player addAction ["<t color='#084B8A'>Radar</t>",{hint format ["Le véhicule de %1 vas as %2 Km/h",(cursortarget getVariable "Proprietaire"),(speed cursortarget)]},[],7,true,true,'','(cursorTarget iskindof "CAR" or cursorTarget iskindof "Ship" or cursorTarget iskindof "Air")'];


	player addAction ['Verouiller / Deverouiller','fonction\Serveur\Verouiller.sqf',[],7,true,true,'','(player distance cursorTarget) < 4 && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Ship" or cursorTarget iskindof "Air") && (cursorTarget getVariable "Proprietaire") == profileName'];
	player addAction ["Ressource dans le Vehicule","menu\farmVehicule.sqf",[],7,true,true,'','(player distance cursorTarget) < 4 && (cursorTarget iskindof "CAR" or cursorTarget iskindof "Air" or cursorTarget iskindof "Ship")'];
    player addAction ['Verouiller / Deverouiller','fonction\Serveur\Verouiller.sqf',[],7,true,true,'','(vehicle player) != player && (vehicle player getVariable "Proprietaire") == profileName'];

    Initialisation = false;
waitUntil {Initialisation};

	player addAction ["Menu Garage","Menu\MenuGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Hangar")) < 20'];
	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeGarage.sqf",[],0,true,true,'','(player distance (getMarkerPos "Hangar")) < 20'];

	player addAction ["Menu Heliport","Menu\MenuHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_P")) < 15'];
	player addAction ["Sauvegarde Mon Vehicule","fonction\Civil\SauvegardeHeliport.sqf",[],0,true,true,'','(player distance (getMarkerPos "Heliport_P")) < 15'];

	player addAction ["Reparer Mon Vehicule",{player action ["repairVehicle", cursorTarget];sleep 10;cursorTarget setDamage 0},[],0,true,true,'','cursorTarget isKindOf "CAR"'];

	/********************************* TDF ***********************************************/
	player addAction ["Accepter la mission TDF",{
	TDFAccepte = true;
	publicVariableServer "TDFAccepte";
	execVM "TDFAccepter.sqf";
	},4,0,true,true,'','(position player distance (getMarkerpos "TDFDepart")) < 7 && TDFReady'];

	player addAction ["Mettre les sacs dans le fourgon",{
	TDFEC = true;
	sleep 5;
	TDFSC = TDFSC+1;publicVariable "TDFSC";
	TDFEC = false},4,0,true,true,'','(typeof cursorTarget) == "Land_Suitcase_F" && !TDFEC'];


	player addAction ["Livrer l'ATM",{
	sleep 5;
	deleteVehicle cursorTarget;
	TDFA = true;publicVariable "TDFA";
	sleep 2;
	TDFSEC = false;publicVariable "TDFSEC";
	},4,0,true,true,'','(typeof cursorTarget) == "Land_Suitcase_F"'];
	/*fin*/

	player addItem "ItemGPS";
	4 radioChannelAdd [player];