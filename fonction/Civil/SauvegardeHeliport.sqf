_NomGarage = _this select 3;
_MonVehicule = cursortarget;
Selecteur = 1000;
if(isnil{player getVariable "HelicoSauvegarde3"}) then {Selecteur_ = "3";Selecteur = 3};
if(isnil{player getVariable "HelicoSauvegarde2"}) then {Selecteur_ = "2";Selecteur = 2};
if(isnil{player getVariable "HelicoSauvegarde1"}) then {Selecteur_ = "1";Selecteur = 1};

if (Selecteur > (player getVariable "TailleHeliport")) exitWith {hint "Ton garage est Plein"};

_HelicoSauvegarde = 'HelicoSauvegarde'+ Selecteur_;

if(isNull _MonVehicule) exitWith {hint "Tu n'as pointé aucun Hélico"};
if!(_MonVehicule getVariable "Proprietaire" == profileName) exitWith {hint "Ce n'est pas ton vehicule"};
if (_MonVehicule isKindOf "AIR") then
	{
		player setVariable [_HelicoSauvegarde, [typeof _MonVehicule,getPos _MonVehicule,getDir _MonVehicule,fuel _MonVehicule,getDammage _MonVehicule,_MonVehicule getVariable "Poids"]];
		sleep 0.5;
		deleteVehicle _MonVehicule;
		Hint format ["Helico %1 Sauvegarde",(typeof _MonVehicule)];
	} else {hint "Tu n'as pointé aucun Hélico"};


