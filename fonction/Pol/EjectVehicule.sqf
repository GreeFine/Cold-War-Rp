while {1 == 1} do {
if (vehicle player getVariable "Sortir" == 1) then {player action ["eject", vehicle player],vehicle player setVariable ["Sortir", 0]};
				  };