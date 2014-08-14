TDFReady = 0;
TDFFini = 0;
TDFAccepte = 0;
TDFA1 = false;
TDFA2 = false;
TDFA3 = false;
TDFA4 = false;
TDFA5 = false;
TDFA6 = false;
TDFA7 = false;
TDFA8 = false;
TDFF = false;
publicVariable "TDFReady";
publicVariable "TDFFini";
publicVariable "TDFAccepte";
publicVariable "TDFA1";
publicVariable "TDFA2";
publicVariable "TDFA3";
publicVariable "TDFA4";
publicVariable "TDFA5";
publicVariable "TDFA6";
publicVariable "TDFA7";
publicVariable "TDFA8";
publicVariable "TDFF";
while {true} do {
	sleep 1800;
	waitUntil {playersNumber civilian >= 5};
	TDFReady = 1;
	waitUntil {TDFAccepte == 1};
	_Money = ((playersNumber civilian) * 30000);
	TDFM = _Money;
	publicVariable "TDFM";
	_ATMN = (random(7)+1);
	switch _ATMN do {
	   case 1 : {_ATML = [0,0,0]};
	    case 2 : {_ATML = _ATML +[0,0,0]};
	     case 3 : {_ATML = _ATML +[0,0,0]};
	      case 4 : {_ATML = _ATML +[0,0,0]};
	       case 5 : {_ATML = _ATML +[0,0,0]};
	        case 6 : {_ATML = _ATML +[0,0,0]};
	      	 case 7 : {_ATML = _ATML +[0,0,0]};
	      	  case 8 : {_ATML = _ATML +[0,0,0]};
	};
	TDFV = "Véhicule à Mettre !!!!" createVehicle position [0,0,0];
		{
		if (side player == WEST) then {
			TDF = player createSimpleTask ["TDF"];
			TDF setSimpleTaskDescription ["Proteger", "TDF", "Protéger le convoyeur de fonds"];
			TDF setSimpleTaskTarget [TDFV, true];
			player setCurrentTask TDF;
		};
	} forEach playableUnits;
	waitUntil {isengineOn TDFV};
	{
	titleText ["*** !!! Le Convoyeur de Fond à débuté sa tournée !!! ***", "PLAIN"];
	} forEach playableUnits;

	_owner = owner TDFVP;

	ATML = [_ATML select 0,_ATML select 1,_ATML select 2];
	_owner publicVariableClient ATML;
	waitUntil {TDFA1 && TDFF};

	if (_ATMN > 1) then {ATML = [_ATML select 3,_ATML select 4,_ATML select 5];
	_owner publicVariableClient ATML;
	waitUntil {TDFA2 && TDFF};
	};

	if (_ATMN > 2) then {ATML = [_ATML select 6,_ATML select 7,_ATML select 8];
	_owner publicVariableClient ATML;
	waitUntil {TDFA3 && TDFF};
	};

	if (_ATMN > 3) then {ATML = [_ATML select 9,_ATML select 10,_ATML select 11];
	_owner publicVariableClient ATML;
	waitUntil {TDFA4 && TDFF};
	};

	if (_ATMN > 4) then {ATML = [_ATML select 12,_ATML select 13,_ATML select 14];
	_owner publicVariableClient ATML;
	waitUntil {TDFA5 && TDFF};
	};

	if (_ATMN > 5) then {ATML = [_ATML select 15,_ATML select 16,_ATML select 17];
	_owner publicVariableClient ATML;
	waitUntil {TDFA6 && TDFF};
	};

	if (_ATMN > 6) then {ATML = [_ATML select 18,_ATML select 19,_ATML select 20];
	_owner publicVariableClient ATML;
	waitUntil {TDFA7 && TDFF};
	};

	if (_ATMN > 7) then {ATML = [_ATML select 21,_ATML select 22,_ATML select 23];
	_owner publicVariableClient ATML;
	waitUntil {TDFA8 && TDFF};
	};
};