while {1==1} do
	{
	if (((vehicle player) getVariable "Siren") == 1) then
		{
		unit = _this select 0;
		publicVariable "unit";
		[{vehicle unit say3D ["SirenPol",50];},"BIS_fnc_spawn",true,false] spawn BIS_fnc_MP;
		sleep 2.155;
		};
	};