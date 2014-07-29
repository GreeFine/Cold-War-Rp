check = true;
while {check} do {
MenuProfile = false;
_rpname = (ctrlText 1992);
_rpname = (toArray _rpname) - [49,50,51,52,53,54,55,56,57];
rpname = toString _rpname;
if (isnil {rpname}) then {hint "Nom incorect !"} else {check=false;closeDialog 0};
};
[[[puid,pname,rpname],"\ServerColdWarRp\DB\DBCreate.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
	//Default Setup de joueur lambda
get = [pname, "0", "0", [0,0,0], "10000", "0,0,0,0,0", "0,0,0", "0", "0", "1000",rpname,"0","[]",0];
DBCreate = true;