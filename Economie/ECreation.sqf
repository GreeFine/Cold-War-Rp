fnc_T = {

createDialog "EntrepriseC";
MenuChoix = false;
_while = true;
_Ename = "";
while {_while} do {
	waitUntil {MenuChoix};
	_count = count toArray (ctrlText 1996);
	if (!isnil {ctrlText 1996} && MenuChoix) then {
		if (_count < 20 && _count > 4) exitWith {_while = false;_Ename = (ctrlText 1996)};
			hint "Le nom doit faire entre 5 et 20 carractéres";
			MenuChoix = false;
	};
	if (MenuChoix && _count == 0) then {hint "Tu n'as pas mis le nom de ton entreprise"};
	if (!dialog) exitWith {_while = false};
};
if (!dialog) exitWith {};
closeDialog 0;

_Money = (player getVariable "ArgentPoche");
if (_Money > 30000) then {
player setVariable ["ArgentPoche",_Money-30000];

_puid = getPlayerUID player;

hint "Ton entreprise est maintenant crée !";
[[[_puid,_Ename],"\ServerColdWarRp\DB\DBEcreate.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
} else {hint "Tu n'as pas assez d'argent"};

};
[] spawn {sleep 2;[] spawn fnc_T};