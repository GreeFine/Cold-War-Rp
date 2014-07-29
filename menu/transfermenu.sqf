createDialog "BanqueTransferMenu";
ctrlSetText[11164,format["Argent en banque : %1",(player getVariable "MonArgent")]];
{
	if (isPlayer _x) then
	{
			_Playeridx = lbAdd [11165,name _x];
	};

	}forEach playableUnits;



