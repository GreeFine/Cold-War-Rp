_transfernom = _this select 0;
_transferArgent = _this select 1;
_NomJoueur = _this select 2;
if (profileName == _transfernom) then {
Hint format ["Tu as reçu %1 de la part de %2",_transferArgent,_NomJoueur];
player setVariable ["MonArgent", ((player getVariable "MonArgent") + _transferArgent),true];
									};