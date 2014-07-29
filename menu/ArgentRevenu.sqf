
if(floor parseNumber (ctrlText 11117) > 0) then
{
	if (side player == West) then {Vmax = 20000};
	if (side player == civilian) then {Vmax = 1350};
	if((profileNamespace getVariable 'Revenu'+cle) < Vmax && ((profileNamespace getVariable 'Revenu'+cle) + (floor parseNumber (ctrlText 11117)/40)) < Vmax) then
		{
			if((player getVariable 'MonArgent') >= floor parseNumber (ctrlText 11117)) then
			{
				profileNamespace setVariable['Revenu'+cle,(profileNamespace getVariable 'Revenu'+cle) + (floor parseNumber (ctrlText 11117)/40)];
				player setVariable['MonArgent',(player getVariable 'MonArgent') - floor parseNumber (ctrlText 11117),true];
				hint format ["Tu as mit %1 sur ton livret A",(floor parseNumber (ctrlText 11117))];
				saveProfileNamespace;
				closeDialog 0;
				execVM 'menu\MenuBanque.sqf';
			};
		} else {Hint "Le livret A est plafoner"};
};