SaveGarage = false;
_MonVehicule = cursortarget;
if(isNull _MonVehicule or !(_MonVehicule isKindOf "CAR")) exitWith {hint "Tu n'as pointé aucun vehicule";SaveGarage = true;};
if(_MonVehicule getVariable "Proprietaire" != profileName or !(_MonVehicule isKindOf "CAR")) exitWith {hint "Ce n'est pas ton vehicule";SaveGarage = true};
_class = typeof _MonVehicule;
_item = itemCargo _MonVehicule;
_weapond = weaponCargo _MonVehicule;
_magazine = magazineCargo _MonVehicule;

[[[puid,_class,_item,_weapond,_magazine],"\ServerColdWarRp\DB\DBV_Create.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
		deleteVehicle _MonVehicule;
		Hint format ["Voiture %1 Sauvegarde",_class];
SaveGarage = true;


/*
MonVehicule = cursortarget;
class = typeof MonVehicule;
pos = position MonVehicule;
item = itemCargo MonVehicule;
weapond = weaponCargo MonVehicule;
magazine = magazineCargo MonVehicule;

[[[puid,class,pos,item,weapond,magazine],"\ServerColdWarRp\DBV_Create.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
		deleteVehicle MonVehicule;
		Hint format ["Voiture %1 Sauvegarde",class];
*/