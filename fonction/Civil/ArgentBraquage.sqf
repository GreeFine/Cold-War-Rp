_ArgentBraquage = (player getVariable "ArgentBraquage");
Temps = (random 250)+300;
if (isnil {_ArgentBraquage}) exitWith {hint "Tu n'as pas d'argent sale"};
if (_ArgentBraquage > 0) then {
	player setVariable ["ArgentBraquage",0,true];
	hint "On s'occupe de ton Argent ! le temps de le compter et de le blanchir prendra du temps nous t'enveron un SMS quand ce sera fini";
	sleep Temps;
	hint format ["Tu as reçu du blanchisseur d'argent %1",_ArgentBraquage];
	player setVariable ["ArgentPoche",_ArgentBraquage + (player getVariable "ArgentPoche"),true];
} else {hint "Tu n'as pas d'argent sale"};