if(player getVariable "Nvalise" >= 15) exitWith {hint "Tu as déposer trop de valise !"};
if(floor parseNumber (ctrlText 77713) >= 500) then
{
	_transfera = (floor parseNumber (ctrlText 77713));
	if((player getVariable 'ArgentPoche') >= floor parseNumber (ctrlText 77713)) then
		{
	if (_transfera > 0) then {
	player setVariable ["Nvalise",(player getVariable "Nvalise") + 1,true];
	_valise = "Land_Suitcase_F" createVehicle (position player);
	player setVariable ["ArgentPoche",((player getVariable "ArgentPoche")- _transfera),true];
	_valise setVariable ["Argent",_transfera,true];
	hint format ["Tu as déposer une valise contenant %1 euros",(_transfera)];
						};
	} else {hint "Tu n'as pas assez d'argent !"};
} else {hint "Tu dois deposer 500 € minimum dans ta valise"};