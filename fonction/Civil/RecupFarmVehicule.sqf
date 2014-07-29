_Selecteur = lbCurSel 77793;
_Ressources = ["Heroine","Pomme","Sable","Bois","Pierre","SableTransformer","BoisTransformer","PierreTransformer","Poisson","Petrole","Fer","FerTransformer","Charbon","Diamant","HeroineTransformer","DiamantTransformer","PetroleTransformer"] select _Selecteur;
if (isnil {_Ressources}) exitWith {hint "Selectione la Ressource à Prendre"};
_veh = cursorTarget;
if (isnil {(_veh getVariable _Ressources)}) exitWith {hint format ["Tu n'as pas de %1",(_Ressources)]};
_PoidsRessource = [10,5,4,8,8,4,8,8,10,10,30,30,7,5,10,5,10] select _Selecteur;
_PoidsTotal = (_veh getVariable _Ressources) * _PoidsRessource;
if (floor parseNumber (ctrlText 77794) > 0 && floor parseNumber (ctrlText 77794) <= _PoidsTotal) then
	{
_NombreRessources = floor parseNumber (ctrlText 77794);
_PoidsChoisi = _NombreRessources * _PoidsRessource;

	if (_PoidsChoisi + (player getVariable "Poids") <= 100) then
		{
if !(isnil {_veh}) then
	{
	if (isnil {(player getVariable _Ressources)}) then {player setVariable [_Ressources,0,true]};
	_veh setVariable ["Poids",(_veh getVariable "Poids") + _PoidsChoisi,true];
	player setVariable ["Poids",(player getVariable "Poids") + _PoidsChoisi,true];
	player setVariable [_Ressources,(player getVariable _Ressources) + _NombreRessources,true];
	_veh  setVariable [_Ressources,(_veh  getVariable _Ressources) - _NombreRessources,true];
	hint format ["Tu as recupére %1 %2 dans le vehicule",(_NombreRessources),(_Ressources)];

	} else {hint "Tu ne pointe aucune voiture"};
		} else {hint "Tu ne peut pas porter autant"};
	} else {hint "Selectione le nombre à retirer"};
