private ["_ui", "_hud"];
disableserialization;

2 cutRsc ["GreeFine_HUD","PLAIN"];

fnc_hudUp = {
	2 cutRsc ["GreeFine_HUD","PLAIN"];
	disableserialization;
	_ui = (uiNamespace getVariable 'GreeFine_HUD');

	_INV_Sante = round((1-(getDammage player))*100);
	_INV_Argent = player getVariable "ArgentPoche";
	_INV_Eau = player getVariable "Boire";
	_INV_Bouffe = player getVariable "Manger";

	_hud = _ui displayCtrl 9996;
	_hud ctrlSetText format ["%1",_INV_Sante];

	_hud = _ui displayCtrl 9997;
	_hud ctrlSetText format ["%1",_INV_Argent];

	_hud = _ui displayCtrl 9998;
	_hud ctrlSetText format ["%1",_INV_Eau];

	_hud = _ui displayCtrl 9999;
	_hud ctrlSetText format ["%1",_INV_Bouffe];
};

_Update =  false;
_INV_Sante = 100;_INV_Argent = 100;_INV_Eau = 100;
while {true} do {
	sleep 0.5;
	if (_Update) Then {
	_INV_Sante = round((1-(getDammage player))*100);
	_INV_Argent = player getVariable "ArgentPoche";
	_INV_Eau = player getVariable "Boire";
	};

	_Update =  false;

	if (_INV_Sante != round((1-(getDammage player))*100)) Then {_Update = true};
	if (_INV_Argent != player getVariable "ArgentPoche") Then {_Update = true};
	if (_INV_Eau != player getVariable "Boire") Then {_Update = true};

		if (_Update) then {[] call fnc_hudUp};
};