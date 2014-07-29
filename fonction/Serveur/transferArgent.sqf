if(floor parseNumber (ctrlText 11166) > 2000) then
{
	if((player getVariable 'MonArgent') >= floor parseNumber (ctrlText 11166)) then
	{
		_player = name player;
		player setVariable['MonArgent',(player getVariable 'MonArgent') - floor parseNumber (ctrlText 11166),true];
		_transfernumber =  lbCurSel 11165;
		_transfernom = lbtext [11165, _transfernumber];
		_transferArgent = (floor parseNumber (ctrlText 11166));
		_NomJoueur = (name player);
		[[[_transfernom,_transferArgent,_NomJoueur],"fonction\Serveur\Transfer.sqf"],"BIS_fnc_execVM",true] spawn BIS_fnc_MP;
		closeDialog 0;
		execVM 'menu\MenuBanque.sqf';
	} else {hint "Tu n'as pas assez d'argent"};
} else {hint "Les Transfert sont limité à un minimum de 2000 €"};