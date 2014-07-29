_Selecteur = lbCurSel 77793;
if (floor parseNumber (ctrlText 77132) > 0) then
	{
_unit = player getVariable "CivilPorter";
_Temps = floor parseNumber (ctrlText 77132);
if (isNil {_unit}) exitWith {hint "Tu doit porter le prisonier !"};
if ((_unit) isKindOf "Man") then {
		detach _unit;
		_unit setPos (getMarkerPos "Prison");
		player setVariable ["Menoter", 0,true];
		sleep _Temps;
		_unit setPos (getMarkerPos "SortiePrison");
			} else {hint "Tu doit porter le prisonier !"};
player setVariable ["CivilPorter",nil];
	};