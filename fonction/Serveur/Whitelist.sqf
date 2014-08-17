_Pside = side player;
_Token = call compile (get select 1);
if !(_Token == 7) then {
	switch (_Pside) do
	{
		case civilian:{if (_Token != 0) exitWith {endMission "NotWhitelisted"}};
	    case west:{if (_Token != 1) exitWith {endMission "NotWhitelisted"}};
	    case independent:{if (_Token != 2) exitWith {endMission "NotWhitelisted"}};
	    case opfor:{if (_Token != 3) exitWith {endMission "NotWhitelisted"}};
	    default {endMission "Error"};
	};
};