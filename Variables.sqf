/* BASIC VARRIABLE */
player setVariable ["Poids", 0, true];
player setVariable ["Boire", 100, true];
player setVariable ["Manger", 100, true];
player setVariable ["Menoter", 0, true];
PAction = true;
SaveGarage = true;
tazer = true;
H_Ru = markerpos "Hopital_Ru";
H_A = markerpos "Hopital_A";
H_R = markerpos "Hopital_R";

/* EVENT HANDLERS */
player addEventHandler ['killed',{
_KilledPos = position player;
waitUntil {!alive player};
[_KilledPos] execVM "fonction\Serveur\Killed.sqf";
}];
/*Tazer Triger*/

fnc_tazed = {
_unit = _this select 0;
disableUserInput true;
_unit switchMove "AinjPpneMstpSnonWnonDnon";
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL _unit);
_obj setPosATL (getPosATL _unit);
_unit attachTo [_obj,[0,0,0]];
sleep 15;
_unit switchmove "AmovPpneMstpSnonWnonDnon_healed";
sleep 5;
detach _unit;
disableUserInput false;
};

player addEventHandler ['handleDamage',{
_unit = _this select 0;_damage = _this select 2;_source = _this select 3;
if (isPlayer _source && _unit != _source && _unit == vehicle _unit && (_source distance _unit) < 35 && tazer) Then {
	if (currentWeapon _source == "hgun_P07_snds_F") then {
		[_unit] spawn fnc_tazed;
		_damage = false;
		tazer = true;};
	};_damage;}];

/* VARRIABLE ANNEXE */
infoNumeros = 1;
BanqueBraquer = 0;
publicVariable "BanquerBraquer";
player sidechat format ["%1", "Variable charge"];