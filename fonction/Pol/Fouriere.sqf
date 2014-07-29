_veh = cursortarget;
if (isnil {_veh}) exitWith {hint "Vous n'avez pas pointé votre souris vers un véhicule à mettre en fourrière !"};
if (_veh isKindOf "CAR") then
{
		if (count crew _veh == 0) then
		{
		deleteVehicle _veh;
		player setVariable["MonArgent",(player getVariable "MonArgent") + 2350,true];
		hint "Mise en fourriere Commission 2350 € pour avoir participer à une mise en fourrière";
		} else
			{
			if (count crew _veh >= 0) then
				{
				hint "Impossible de mettre ce véhicule en fourrière puisqu'un joueur y est actuellement !";
				};
			};
};