if(floor parseNumber (ctrlText 11117) > 0) then
{
	if((player getVariable 'ArgentPoche') >= floor parseNumber (ctrlText 11117)) then
	{
		player setVariable['MonArgent',(player getVariable 'MonArgent') + floor parseNumber (ctrlText 11117),true];
		player setVariable['ArgentPoche',(player getVariable 'ArgentPoche') - floor parseNumber (ctrlText 11117),true];
		closeDialog 0;
		execVM 'menu\MenuBanque.sqf';
	};
};