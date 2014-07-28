_Selecteur = lbCurSel 77783;
_Ressources = ["Heroine","Pomme","Sable","Bois","Pierre","SableTransformer","BoisTransformer","PierreTransformer","Poisson","Petrole","Fer","FerTransformer","Charbon","Diamant","HeroineTransformer","DiamantTransformer","PetroleTransformer"] select _Selecteur;
if (isnil {_Ressources}) exitWith {hint "Selectione la Ressource à Prendre"};
_PoidsRessource = [10,5,4,8,8,4,8,8,10,10,30,30,7,5,10,5,10] select _Selecteur;
_veh = cursorTarget;
_PoidsTotal = (player getVariable _Ressources) * _PoidsRessource;
sleep 0.5;
if (floor parseNumber (ctrlText 77784) > 0 && floor parseNumber (ctrlText 77784) <= _PoidsTotal) then
	{
	_NombreRessources = floor parseNumber (ctrlText 77784);
	_PoidsChoisi = _NombreRessources * _PoidsRessource;

	if (_PoidsChoisi <= (_veh getVariable "Poids")) then
		{
if !(isnil {_veh}) then
	{
	if (isnil{_veh getVariable _Ressources}) then {_veh setVariable [_Ressources, 0,true]};
	_veh setVariable ["Poids",(_veh getVariable "Poids") - _PoidsChoisi,true];
	player setVariable ["Poids",(player getVariable "Poids") - _PoidsChoisi,true];

	_veh setVariable [_Ressources,(_veh getVariable _Ressources) + _NombreRessources,true];
	player setVariable [_Ressources,(player getVariable _Ressources) - _NombreRessources,true];
	hint format ["Tu as mis %1 %2 dans le vehicule",_NombreRessources,(_Ressources)];

	} else {hint "Tu ne pointe aucune vehicule"};
		} else {hint "Tu n'as plus de place dans ton Vehicule"};
	} else {hint "Selectione le nombre à retirer"};