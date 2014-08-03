_Pside = side player;
switch (_Pside) do
{
	case civilian:{if (call compile(get select 1) != 0) exitWith {endMission "NotWhitelisted"}};
    case west:{if (call compile(get select 1) != 1) exitWith {endMission "NotWhitelisted"}};
    case independent:{if (call compile(get select 1) != 2) exitWith {endMission "NotWhitelisted"}};
    case opfor:{if (call compile(get select 1) != 3) exitWith {endMission "NotWhitelisted"}};
    default {endMission "Error"};
};