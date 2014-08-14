{
	_Npc = _x select 0;
	_Type = _x select 1;
	_condition = _x select 2;
	_argList = [_Type,_Npc];
	_action = parsetext format ["['Acheter','Economie\Shop.sqf',_argList,0,true,true,'','%2']",_Type,_condition];
	if (_Type == "Vente") Then {
		_Argument = _condition select 0;
		_condition = _condition select 1;
		_action = parsetext format ["['Vendre','Economie\Vente.sqf','%1',0,true,true,'','%2']",_Argument,_condition];
	};
	_init = format ["_this addAction %1",_action];
	_Npc call compile format ["%1",_init];
} forEach npcUnit;



