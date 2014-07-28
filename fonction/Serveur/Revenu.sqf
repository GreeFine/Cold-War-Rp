while {true} do
{
	sleep 600;
	Hint format ["Votre Revenu journalier %1",revenue];
	player setVariable ["MonArgent",((player getVariable "MonArgent") + revenue),true];
};