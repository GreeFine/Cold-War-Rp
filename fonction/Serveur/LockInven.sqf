while {true} do {
 	waitUntil {!(isnull (findDisplay 602))};
 		if (isplayer cursortarget && cursortarget iskindof "man" && backpack cursorTarget != "")  then {

 			closeDialog 0;hint "Tu ne peut pas fouiller le sac d'un joueur";
 		};
     	if (ctrlShown ((findDisplay 602) displayCtrl 640)) then {
     		if (locked cursorTarget > 1) Then {closeDialog 0;hint "cette voiture est fermé"};
            };
            sleep 0.3;
        };