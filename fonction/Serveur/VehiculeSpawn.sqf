sleep 0.5;
_QuelVehicule = _this select 0;
_QuelVendeur = _this select 1;
_poids = _this select 2;
Hint format ["%1",_QuelVehicule];
_veh = createvehicle [_QuelVehicule,(MarkerPos _QuelVendeur),[],5,""];
_veh setvehicleVarName profileName;
_veh setVariable ["Proprietaire",profileName,true];
sleep 0.5;
_veh lock true;
_veh setVariable ["Poids",_poids,true];
_veh setVariable ["Siren",0];
if (side player == west) then {
_veh addAction ["<t color='#B40404'>Sirene</t>",{if ((vehicle player getVariable "Siren") == 0) then
{(vehicle player) setVariable ["Siren",1];hint "Sirene /On";[vehicle player] execVM "fonction\Pol\GyroPol.sqf"} else {(vehicle player) setVariable ["Siren",0];hint "Sirene /Off"};}];};
 sleep 0.5;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;