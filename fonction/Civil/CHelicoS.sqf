_Selecteur = lbCurSel 77743;

_HelicoSelection = ["HelicoSauvegarde1","HelicoSauvegarde2","HelicoSauvegarde3"] select _Selecteur;

_HelicoArgument = (player getVariable _HelicoSelection);
_Helico = _HelicoArgument select 0;
_HelicoSauvegardePos = _HelicoArgument select 1;
_HelicoeSauvegardeDir = _HelicoArgument select 2;
_HelicoSauvegardeFuel = _HelicoArgument select 3;
_HelicoSauvegardeDommage = _HelicoArgument select 4;
_HelicoSauvegardePoids = _HelicoArgument select 5;

_veh = _Helico createVehicle (_HelicoSauvegardePos);
sleep 0.3;
player setVariable [_HelicoSelection, nil];
_veh setFuel _HelicoSauvegardeFuel;
_veh setDamage _HelicoSauvegardeDommage;
_veh setVariable ["Poids",_HelicoSauvegardePoids,true];
sleep 0.3;
_veh setvehicleVarName profileName;
_veh setVariable ["Proprietaire",profileName,true];
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;