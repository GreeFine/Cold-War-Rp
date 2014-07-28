 MenuExit = false;
 while {!MenuExit or !dialog} do {
 	closeDialog 0;
	_Argument = call compile (_this select 3);
	_Selecteur = lbCurSel 9750;

_RessourceA = [];
{_RessourceA = _RessourceA+[(RessourceArray select _x)]} forEach _Argument;

_Menu = [];
{_Menu = _Menu+[_x select 0]} forEach _RessourceA;

	createDialog "Shop";
	{lbAdd [9750,_x]} foreach _Menu;
		ctrlSetText[9751,format["Argent en poche : %1",(player getVariable "ArgentPoche")]];
		ctrlSetText[9753,"Vendre"];
		ctrlSetText[9752,format["Marchand %1",_Menu]];

	MenuChoix = false;


	while {true} do {
	waitUntil {MenuChoix or MenuExit or !dialog};
	_Selecteur = lbCurSel 9750;
	if (_Selecteur >= 0 && MenuChoix) exitWith {};
	if (MenuExit && !dialog) exitWith {_Ressource = nil;_class = nil;_Prix = nil;_Poids = nil};
	if (_Selecteur < 0 && MenuChoix) then {hint "Faite un choix"};
	MenuChoix = false;
	};
	if (MenuExit or !dialog) exitWith {};

if (_Selecteur >= 0) Then {

_Ressource = _RessourceA select _Selecteur;
_class = _Ressource select 0;
_Poids = _Ressource select 1;
_Prix = round(_Ressource select 3);

if (!isnil {player getVariable _class}) then {

_Ressource1 = (player getVariable _class);
_Playerpoids = (player getVariable "Poids");
_PoidFinal = _Poids*_Ressource1;

	hint format ["Vous avez vendue %1 %3 pour %2 euros",_Ressource1,(_Ressource1 * _prix),_class];
	player setVariable ["ArgentPoche",(player getVariable "ArgentPoche") + _Ressource1*_Prix,true];
	if ((_Playerpoids - _PoidFinal) >= 0) Then {
		player setVariable ["Poids", _Playerpoids - _PoidFinal,true];
	} else {player setVariable ["Poids",0,true];};
	player setVariable [_class, nil,true];

		switch _class do {
		    case "Pomme": {Pomme=Pomme+_Ressource1;publicVariable "Pomme"};
		    case "Bois": {Bois=Bois+_Ressource1;publicVariable "Bois"};
		    case "Pierre": {Pierre=Pierre+_Ressource1;publicVariable "Pierre"};
		    case "Fer": {Fer=Fer+_Ressource1;publicVariable "Fer"};
		    case "Diamant": {Diamant=Diamant+_Ressource1;publicVariable "Diamant"};
		    case "Petrole": {Petrole=Petrole+_Ressource1;publicVariable "Petrole"};
		    case "Epaves": {Epaves=Epaves+_Ressource1;publicVariable "Epaves"};
		    case "Cannabis": {Cannabis=Cannabis+_Ressource1;publicVariable "Cannabis"};
		    case "Heroine": {Heroine=Heroine+_Ressource1;publicVariable "Heroine"};
		    case "Baracuda": {Baracuda=Baracuda+_Ressource1;publicVariable "Baracuda"};
		    case "Thons": {Thons=Thons+_Ressource1;publicVariable "Thons"};
		    case "Tortues": {Tortues=Tortues+_Ressource1;publicVariable "Tortues"};
		    case "Roussettes": {Roussettes=Roussettes+_Ressource1;publicVariable "Roussettes"};
		    default {};
		};
	} else {hint format ["tu n'as pas de %1",_class]};
};
};
