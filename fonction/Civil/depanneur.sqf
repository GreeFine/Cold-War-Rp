/*////////////////////////////////////////////////
				author : GreeFine
			Code written by GreeFine
	Using this code or mission without GreeFine direct permission is forbidden
			Script : depanneur
	Droit d'utilisation : involved-gaming.com
///////////////////////////////////////////////*/
player addAction ["<t color='#B40404'>Dépaneuse : Attacher</t>",{[] spawn fnc_DepaneuseR}
,0,0,true,true,'','(vehicle player) == player && count (nearestObjects [player, ["O_Truck_03_transport_F"], 7]) > 0 && cursorTarget isKindOf "CAR" && typeOf cursorTarget != "O_Truck_03_transport_F" && (count attachedObjects ((nearestObjects [player, ["O_Truck_03_transport_F"], 7]) select 0) == 0)'];

player addAction ["<t color='#0F3F99'>Dépaneuse : Détacher</t>",{[] spawn fnc_DepaneuseD},0,0,true,true,'','(vehicle player) == player && count (nearestObjects [player, ["O_Truck_03_transport_F"], 7]) > 0 && cursorTarget isKindOf "CAR" && typeOf cursorTarget != "O_Truck_03_transport_F" && !isNull attachedTo cursorTarget'];

fnc_DepaneuseR = {
	_depanneuse = (nearestObjects [player, ["O_Truck_03_transport_F"], 7]) select 0;
	_veh = cursorTarget;
	_dir = sqrt((direction _depanneuse - direction _veh)^2);
	if (_veh isKindOf "CAR" && (player distance _veh) < 5 && _dir < 12) then	{
			_depanneuse lockCargo true;
			hint "Remorquage de la voiture ...";
			player playMove "AinvPknlMstpSlayWrflDnon_healed";
			sleep 7;
			_veh attachTo [_depanneuse,[0.1,-2.5,1.23]];
			hint "La voiture est en place !";
		} else {hint "La voiture est trop loin ou n'est pas aligner !"};
};

fnc_DepaneuseD = {
	_depanneuse = (nearestObjects [player, ["O_Truck_03_transport_F"], 7]) select 0;
	_veh = (attachedObjects  _depanneuse) select 0;
	hint "Détachement de la voiture ...";
	player playMove "AinvPknlMstpSlayWrflDnon_healed";
	sleep 7;
	_veh attachTo [_depanneuse,[0.1,-3.5,1.55]];
	sleep 0.3;
	_veh attachTo [_depanneuse,[0.1,-5.5,1.55]];
	sleep 0.3;
	_veh attachTo [_depanneuse,[0.1,-8,0.9]];
	sleep 0.3;
	_veh attachTo [_depanneuse,[0.1,-8,0.3]];
	sleep 0.3;
	_veh attachTo [_depanneuse,[0.1,-8,-0.3]];
	if (_veh isKindOf "Truck_F") Then {
	_veh attachTo [_depanneuse,[0.1,-10,-0.3]];
	};
	sleep 0.5;
	detach _veh;
};

for "_i" from  to 10 /* step +1 */ do {
	cursor = cursorTarget;
	veh = "O_Truck_03_fuel_F" createVehicle position player;
	veh attachTo [cursor,[0.1,-3.5,1.55]];
};

