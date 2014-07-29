conteur = 0;
Temps = 0;
Argent = 0;
TempsCoolDown = (random 3600)+5400;
publicVariable "TempsCoolDown";
publicVariable "conteur";
while {conteur  <= TempsCoolDown} do
{
	 conteur = conteur +10;
	if (conteur >= TempsCoolDown) exitWith {BanqueBraquer = 0;publicVariable "BanqueBraquer";conteur = 0;TempsCoolDown = 0;publicVariable "TempsCoolDown";
publicVariable "conteur"};
    sleep 10;

};