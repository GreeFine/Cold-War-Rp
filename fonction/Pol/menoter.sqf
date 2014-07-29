	while {true} do {sleep 2;

	while {player getVariable "Menoter" == 1} do
	{
		player enablesimulation false;
		while {player getVariable "Menoter" == 1} do {player playMove "AmovPercMstpSnonWnonDnon_Ease"};
		waitUntil {player getVariable "Menoter" == 0};
		hint "Tu est démenoter Appuis sur V pour te détacher";
		player enablesimulation true;
	};
		if!(alive player) then
		{
			player setVariable ["Menoter",0,true];
		};

					};