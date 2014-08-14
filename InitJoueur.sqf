////////////////////////////////////
//Script Par GreeFine
// révision par Le Kurde
//initialisation Joueurs
//////////////////////////////////////
waitUntil {alive player}; //le wait until est appelé à chaque frame(source BIS). Mieux qu'un while(true) mais je pense que l'ont peut trouver mieux plus tard.
titleCut ["", "BLACK", 1];
hint "Initialisation Joueur";
puid = getPlayerUID player;
pname = name player;
OPlayer = player;
get = nil;
[[[puid,OPlayer],"\ServerColdWarRp\DB\DBSelect.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
waitUntil {!isnil {get}};
sleep 1;
if (isnil {get select 0}) then {
	DBCreate=false;
	createDialog "MenuProfile";
	waitUntil {DBCreate};
};
_exe = execVM "fonction\Serveur\Whitelist.sqf";
waitUntil {scriptDone _exe};
	//Initialisation update+save\\
execVM "fonction\Serveur\DBSaveRequest.sqf";
_exe = execVM "fonction\Serveur\InitLoadout.sqf";
waitUntil {scriptDone _exe};
execVM "fonction\Serveur\SaveLoadout.sqf";
			/*Hunger Systeme*/
_exe = execVM "Variables.sqf";
waitUntil {scriptDone _exe};

execVM "fonction\Pol\menoter.sqf";
execVM "fonction\Pol\EjectVehicule.sqf";
execVM "fonction\Pol\MettredansV.sqf";
execVM "fonction\Civil\Alimentation.sqf";
execVM "fonction\Serveur\Revenu.sqf";
execVM "fonction\Serveur\AFK.sqf";
execVM "fonction\Serveur\LockInven.sqf";
execVM "hud\InitHud.sqf";
execVM "fonction\serveur\NomdesJoueur.sqf";
execVM "Economie\InitNpc.sqf"; //initialisation des npc à chaque joueur??
execVM "fonction\serveur\RealisticFuel.sqf";
sleep 0.2;
hint "Joueur initialisé";
Initialisation = true;
titleCut ["", "BLACK IN", 5];
titleText ["*** !!! Lisez les regles et jouer Rp Pour toute question vous pouvez nous conctacter !!! ***", "PLAIN"];

/**/