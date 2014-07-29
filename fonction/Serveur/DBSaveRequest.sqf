/*/////////Update du joueur cote client///////////////*/
		/* Database Varriables */
waitUntil {!isnil {get}};
player setpos (call compile format ["[%1]",(get select 2)]);
player setVariable ["MonArgent",call compile (get select 4),true];
player setVariable ["ArgentPoche",call compile (get select 3),true];
License = (call compile format ["[%1]",(get select 5)]);
LicenseV = License select 0;
LicenseC = License select 1;
LicenseB = License select 2;
LicenseA = License select 3;
LicenseAr = License select 4;
formations = (call compile format ["[%1]",(get select 6)]);
FormationF = Formations select 0;
FormationP = Formations select 1;
FormationC = Formations select 2;
prison = call compile (get select 7);
vip = call compile (get select 8);
revenue = call compile (get select 9);
player setVariable ["Rpname", (get select 10),true];
Ranks = call compile (get select 11);
_time = call compile (get select 13);

_Arraypuid = toarray (getPlayerUID player);
_numeros = format ["%1%2%3%4%5",_Arraypuid select 6,_Arraypuid select 7,_Arraypuid select 8,_Arraypuid select 9,_Arraypuid select 10];
player setVariable ["numeros", _numeros,true];


while {true} do {
sleep 60;
/*/////////Update du joueur sur le Serveur///////////////*/
_pos = position player;
_argent = player getVariable "MonArgent";
_argentPoche = player getVariable "ArgentPoche";
_license = [LicenseV,LicenseC,LicenseB,LicenseA,LicenseAr];
_formations = [FormationF,FormationP,FormationC];
_loadout = loadout;
_time = _time+60;
[[[puid,pname,_pos,_argent,_argentPoche,prison,revenue,_license,_formations,_loadout,_time],"\ServerColdWarRp\DB\DBUpdate.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;

sleep 1;
get = nil;
[[[puid,OPlayer],"\ServerColdWarRp\DB\DBSelect.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
waitUntil {!isnil {get}};
};