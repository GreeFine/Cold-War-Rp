TDFVP = player;publicVariableServer "TDFVP";
TDFBF = false;
TDFSC = 0;publicVariable "TDFSC";
TDFSEC = false;publicVariable "TDFSEC";

////////////////////////////////////////Action Setup//////////////////////////////////////////////////////////
player addAction ["Prendre les sacs d'argent",{TDFBF = true;
TDFSAC = "Land_Suitcase_F" createVehicle [14530.6,16718.4,0.00143814]
},4,0,true,true,'','(position player distance [14530.6,16718.4,0.00143814]) < 20 && (position player distance [14530.6,16718.4,0.00143814]) > 3 && !TDFBF'];

player addAction ["Livrer le sac à l'ATM",{
TDFSAC = "Land_Suitcase_F" createVehicle ATML;
TDFSEC = true;publicVariable "TDFSEC";
},4,0,true,true,'','(position player distance ATML) < 10 && (position player distance ATML) > 3 && !TDFSEC'];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	waitUntil {!isnil {TDFV}};
	player moveInDriver TDFV;

	_TDFB = player createSimpleTask ["TDFB"];
	_TDFB setSimpleTaskDescription ["Banque", "TDFB", "Récuper les fonds à la banque"];
	_TDFB setSimpleTaskDestination  [14530.6,16718.4,0.00143814];
	player setCurrentTask _TDFB;
	sleep 5;
	waitUntil {TDFSC >= ATMN};
	deleteVehicle TDFSAC;

	_TDFB setTaskState "Succeeded";
	_TDFATM1 = player createSimpleTask ["TDFATM"];
	_TDFATM1 setSimpleTaskDescription ["Distributeur 1", "TDFATM", "Aller aux Distributeur"];
	_TDFATM1 setSimpleTaskDestination  ATML;
	player setCurrentTask _TDFATM1;
	waitUntil {TDFA};
	sleep 2;

	_TDFATM1 setTaskState "Succeeded";
	_TDFATM2 = player createSimpleTask ["TDFATM"];
	_TDFATM2 setSimpleTaskDescription ["Distributeur 2", "TDFATM", "Aller aux Distributeur"];
	_TDFATM2 setSimpleTaskDestination  ATML;
	player setCurrentTask _TDFATM2;
	waitUntil {TDFA};

	if (TDFSC > 2) then {
	sleep 2;
	_TDFATM2 setTaskState "Succeeded";
	_TDFATM3 = player createSimpleTask ["TDFATM"];
	_TDFATM3 setSimpleTaskDescription ["Distributeur 3", "TDFATM", "Aller aux Distributeur"];
	_TDFATM3 setSimpleTaskDestination  ATML;
	player setCurrentTask _TDFATM3;
	waitUntil {TDFA};
	};

	if (TDFSC > 3) then {
	sleep 2;
	_TDFATM3 setTaskState "Succeeded";
	_TDFATM4 = player createSimpleTask ["TDFATM"];
	_TDFATM4 setSimpleTaskDescription ["Distributeur 4", "TDFATM", "Aller aux Distributeur"];
	_TDFATM4 setSimpleTaskDestination  ATML;
	player setCurrentTask _TDFATM4;
	waitUntil {TDFA};
	};

	if (TDFSC > 4) then {
	sleep 2;
	_TDFATM4 setTaskState "Succeeded";
	_TDFATM5 = player createSimpleTask ["TDFATM"];
	_TDFATM5 setSimpleTaskDescription ["Distributeur 5", "TDFATM", "Aller aux Distributeur"];
	_TDFATM5 setSimpleTaskDestination  ATML;
	player setCurrentTask _TDFATM5;
	waitUntil {TDFA};
	};

	if (TDFSC > 5) then {
	sleep 2;
	_TDFATM5 setTaskState "Succeeded";
	_TDFATM6 = player createSimpleTask ["TDFATM"];
	_TDFATM6 setSimpleTaskDescription ["Distributeur 6", "TDFATM", "Aller aux Distributeur"];
	_TDFATM6 setSimpleTaskDestination  ATML;
	player setCurrentTask _TDFATM6;
	waitUntil {TDFA};
	};

	if (TDFSC > 6) then {
	sleep 2;
	_TDFATM6 setTaskState "Succeeded";
	_TDFATM7 = player createSimpleTask ["TDFATM"];
	_TDFATM7 setSimpleTaskDescription ["Distributeur 7", "TDFATM", "Aller aux Distributeur"];
	_TDFATM7 setSimpleTaskDestination  ATML;
	player setCurrentTask _TDFATM7;
	waitUntil {TDFA};
	sleep 2;
	};
