getV = nil;_Vid=[];_class=[];_item=[];_weapon=[];_magazine=[];
[[[puid,Oplayer],"\ServerColdWarRp\DB\DBV_Select.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
waitUntil {!isnil {getV}};
for "_i" from 0 to ((count (getV)/5)-1) do {
	_Vid = _Vid+[(getV select (0+(_i*5)))];
	_class = _class+[(getV select (1+(_i*5)))];
	_item = _item+[(getV select (2+(_i*5)))];
	_weapon = _weapon+[(getV select (3+(_i*5)))];
	_magazine = _magazine+[(getV select (4+(_i*5)))];
};

createDialog "MenuGarage";
ctrlSetText[77761,"Votre garage"];
ctrlSetText[77762,format["Nombre de Voiture : %1",(count (getV)/5)]];
{
	lbAdd [77763,format["%1",_x]];
} forEach _class;

MenuChoix = false;
waitUntil {MenuChoix or !dialog};
_Selecteur = lbCurSel 77763;

while {!isnil {_Selecteur} && MenuChoix} do {
	sleep 0.01;
	_Selecteur = lbCurSel 77763;
	if (isnil {_Selecteur} && MenuChoix) then {hint "Faite un choix"};
	MenuChoix = false;
	if (!dialog) exitWith {MenuChoix = false};
};
if (!dialog) exitWith {MenuChoix = false};

_Marker = "Parking_Public";
_MarkerPos = markerpos "Parking_Public";
if (side player == west) then {_Marker = markerpos "Hangar"};
if (count(nearestObjects[_MarkerPos,["Car","Ship","Air"],6]) > 0) exitWith {hint "Il y as une voiture devant le garage !"};

_class = _class select _Selecteur;
if !(_item select _Selecteur == "") then {item = call compile format ["[%1]",(_item select _Selecteur)]} else {item = []};
if !(_weapon select _Selecteur == "") then {weapon = call compile format ["[%1]",(_weapon select _Selecteur)]} else {weapon = []};
if !(_magazine select _Selecteur == "") then {magazine = call compile format ["[%1]",(_magazine select _Selecteur)]} else {magazine = []};
_Vid = _Vid select _Selecteur;
closeDialog 0;

_veh = createvehicle [_class,_MarkerPos,[_Marker,_Marker],5,""];
_veh setdir 90;
_veh lock true;
sleep 0.3;
_veh setvehicleVarName profileName;
_veh setVariable ["Proprietaire",profileName,true];
_veh setVariable ["Siren",0];
_veh addAction ["<t color='#B40404'>Sirene</t>",{if ((vehicle player getVariable "Siren") == 0) then
 {(vehicle player) setVariable ["Siren",1];hint "Sirene /On";[vehicle player] execVM "fonction\Pol\GyroPol.sqf"} else {(vehicle player) setVariable ["Siren",0];hint "Sirene /Off"};}
 ,[],7,true,true,'','(_target distance _this) < 4 && (side player == West)'];

 /*Item Delte and Load the previous save items*/
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
{_veh addItemCargoGlobal [_x, 1]} foreach (item+weapon+magazine);

[[[_Vid],"\ServerColdWarRp\DB\DBDelete.sqf"],"BIS_fnc_execVM",false ,false] spawn BIS_fnc_MP;
/*
Vid = [];
Vid = Vid+[(getV select (0+(0*5)))];
*/