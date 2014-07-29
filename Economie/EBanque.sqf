_puid = getPlayerUID player;
[[[_puid,Oplayer],"\ServerColdWarRp\DB\DBEselect.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
waitUntil {!isnil {Ebanque}};
_Ebanque = Ebanque;
if (_Ebanque) Then {
	createDialog "Ebanque";
	ctrlSetText[------,format["Argent : %1",_Ebanque]];

	waitUntil {MenuExit or !dialog or MenuChoix};
	if (MenuExit or !dialog) exitWith {};
	closeDialog 0;

	_Money = (ctrlText 00000);
	_PMoney = (player getVariable "MonArgent");
	if (deposer) Then {_Money = -_Money};
	if (_PMoney > _Money) Then {
	[[[_puid,_Money],"\ServerColdWarRp\DB\DBEupdate.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
	player setVariable ["MonArgent",_PMoney+_Money];
	} else {hint "Tu n'as pas cette Argent"};
};