_cursorTarget = cursorTarget;
if (isnil {player getVariable "CivilPorter"}) then {hint "Tu dois porter le civil"};
if (_cursorTarget isKindOf "CAR") then {
detach (player getVariable "CivilPorter");
(player getVariable "CivilPorter") setVariable ["MettreDansV",_cursorTarget,true];
player setVariable ["CivilPorter",nil]
										} else {hint "Tu dois Viser une Voiture"};