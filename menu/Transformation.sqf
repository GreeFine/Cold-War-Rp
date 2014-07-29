ressourcesaT = _this select 3;
if (isnil {player getVariable "Formation"+ressourcesaT}) exitWith {hint "Tu n'as pas ta formation"};
if ((player getVariable "Formation"+ressourcesaT) == 1) then
	{
Nressources =  player getVariable ressourcesaT;
if (isnil {Nressources}) exitWith {hint format ["Tu n'as aucune %1 à transformer",ressourcesaT]};
createDialog "MenuTransformation";
ctrlSetText[77111,format["Argent en poche : %1",(player getVariable "ArgentPoche")]];
ctrlSetText[77112,format["Vous avez %2 à transformer : %1",(ressourcesaT),(Nressources)]];
	} else {hint "Tu n'as pas ta formation"};