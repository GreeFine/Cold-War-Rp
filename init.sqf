player sidechat format ["%1", "Init Effectuer"];
_list = nearestObjects [[14219,14971,-2], ["static"], 15000];
{_x allowdamage false} forEach _list;
if (isDedicated) then
{
	setDate[2014, 08, 3, 13, 0];
	execVM "\ServerColdWarRp\init.sqf";
	execVM "\ServerColdWarRp\AllDead.sqf";
}
else
{
	if (!isServer || local player) then
	{
		 execVM "InitJoueur.sqf";
	};
    //this code will run on every joining client
};

/*
onMapSingleClick {vehicle player setpos _pos};
execVM "fonction\civil\SauvegardeGarage.sqf";
*/