_Numeros = call compile (ctrlText 77182);
if (_Numeros > 0 && _Numeros != 3630) then {
		_TextMessage = (ctrlText 77183);
		if (isnil {_TextMessage}) exitWith {hint "Tu n'as pas mis de text !"};
		_NomJoueur = (name player);
		sleep 1;
		publicVariable "Numeros";publicVariable "TextMessage";publicVariable "NomJoueur";
		[[[_Numeros,_TextMessage,_NomJoueur],"fonction\serveur\telephone_R.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
} else {hint "mauvais numéros"};

if ((_Numeros == 3630) && (player getVariable "Marchand")) then {
	_TextMessage = (ctrlText 77183);
	_n = floor parseNumber _TextMessage;
	if ((_n/2) != ((round _n)/2) or _n > 10) exitWith {hint "Les caisses ce commandes par 2 !"};
	_randM = round(random 6);
	if (!isnil {_n} && _n > 0) Then {MarchandRequest = MarchandRequest+[_n,name player,_randM];publicVariable "MarchandRequest"};
		switch _randM do {
        case 1 :{hint "La marchandise arrivera au stock Nord"};
        case 2 :{hint "La marchandise arrivera au stock Nord Est"};
        case 3 :{hint "La marchandise arrivera au stock Ouest"};
        case 4 :{hint "La marchandise arrivera au stock Sud Ouest"};
        case 5 :{hint "La marchandise arrivera au stock Sud"};
        case 6 :{hint "La marchandise arrivera au stock Sud Est"};
        default {hint "La marchandise n'arrivera pas"};
    };
};