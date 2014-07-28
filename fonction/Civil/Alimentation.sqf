while {true} do
	{
    player setVariable ["Boire", (player getVariable "Boire") - round(random(2))];
	player setVariable ["Manger", (player getVariable "Manger") - round(random(3))];
	sleep 30+random(16);
	if (player getVariable "Boire" < 0) then {player setDamage 1};
	if (player getVariable "Manger" < 0) then {player setDamage 1};
};