////////////////////////////////////
//Script Par GreeFine
// revision par Le Kurde
//initialisation principale
//////////////////////////////////////
diag_log "Initialisation Cold_War_Rp";
diag_log "Initialisation en cours ..."; //remplacer par un log db plus tard...

//Reduit le temps de chargement
//_list = nearestObjects [[14219,14971,-2], ["static"], 15000];
//{_x allowdamage false} forEach _list;//building Destruction : off

if (isDedicated) then
{
	//initialisation serveur
	execVM "\ServerColdWarRp\init.sqf";
	execVM "\ServerColdWarRp\AllDead.sqf";
}
else
{
	if (!isServer || local player) then
	{
		 execVM "InitJoueur.sqf";
	};
    //this code will run on every joining client
};

diag_log "Initialisation effectue";

/*
onMapSingleClick {vehicle player setpos _pos};
execVM "fonction\civil\SauvegardeGarage.sqf";
*/