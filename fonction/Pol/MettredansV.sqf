while {1 == 1} do
{
	sleep 2;
    while {!isnil {player getVariable "MettreDansV"}} do  {player moveInCargo (player getVariable "MettreDansV");player setVariable ["MettreDansV",nil]};
};
