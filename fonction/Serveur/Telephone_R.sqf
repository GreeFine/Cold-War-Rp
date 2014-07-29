Numeros = _this select 0;
TextMessage = _this select 1;
NomJoueur = _this select 2;
separator1 = parseText "<br />--------------------------------------------------<br />";
if ((player getVariable "numeros") == Numeros) exitWith {
	hint format ["De la part de %1 %2 Message envoyer : %3",NomJoueur,separator1,TextMessage];
};
if ((Numeros == 17) && ((side player == west) or (side player == independent))) exitWith {
hint format ["Civil %1 %2 Envoyer Pour la Police ! : %3",NomJoueur,separator1,TextMessage];
};
if ((Numeros == 7777) && ((player getVariable "Admin") == 1)) exitWith {
	hint format ["Joueur %1 %2 Message envoyer Pour Admin: %3",NomJoueur,separator1,TextMessage];
};
