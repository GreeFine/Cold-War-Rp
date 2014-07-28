LicenseXp = _LicenseXp;
 _Date = (ServerDateselect select 1);
_Argent = player getVariable "ArgentPoche";

LicenseXp_Air = _LicenseXp select 0;
LicenseXp_Terre = _LicenseXp select 1;
LicenseXp_Mer = _LicenseXp select 2;

_list = [LicenseXp_Air,LicenseXp_Terre,LicenseXp_Mer];
_enable = [];
{ if (_x > 0) then {_enable = _enable+[_x]} } forEach _list;

{ if (_Date > _x+3) then {_x = 0} } forEach _list;

createDialog "X-Project";
MenuOk = false;
choix = 0;
achat = 0;
MenuExit = false;
while {!MenuExit or dialog} do {
if (LicenseXp_Air < 0) Then {ctrlText "Vous avez license"} else {ctrlText "Vous n'avez pas cette license"};
if (LicenseXp_Terre < 0) Then {ctrlText "Vous avez license"} else {ctrlText "Vous n'avez pas cette license"};
if (LicenseXp_Mer < 0) Then {ctrlText "Vous avez license"} else {ctrlText "Vous n'avez pas cette license"};

waitUntil {MenuOk or !MenuExit or dialog};
	switch choix do {
		case 0: {};

	    case 1: {
		    if (LicenseXp_Air < 0) Then {
		    	player setVariable ["ArgentPoche",_Argent-10000];
		    	achat = achat+10000;
		    	LicenseXp_Air = _Date;
		    	hint "Vous venez d'acheter le pack Air"
		    } else {hint "Vous possédez déja ce pack"};
	    };

	    case 2: {
		    if (LicenseXp_Terre < 0) Then {
		    	player setVariable ["ArgentPoche",_Argent-10000];
		    	achat = achat+10000;
		    	LicenseXp_Terre = _Date
		    	hint "Vous venez d'acheter le pack Motorisé"
		    } else {hint "Vous possédez déja ce pack"};
		};

	    case 3: {
		    if (LicenseXp_Mer < 0) Then {
			    player setVariable ["ArgentPoche",_Argent-10000];
			    achat = achat+10000;
			    LicenseXp_Mer = _Date
			    hint "Vous venez d'acheter le pack Nautique"
			} else {hint "Vous possédez déja ce pack"};
		};

	    default {};
	};
	LicenseXp = [LicenseXp_Air,LicenseXp_Terre,LicenseXp_Mer];
};
if (achat > 0) Then {[[[achat,'X-Project'],"\ServerColdWarRp\DB\DB_Money.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;};
