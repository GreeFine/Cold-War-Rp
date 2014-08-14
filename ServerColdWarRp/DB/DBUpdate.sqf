_puid = _this select 0;
_pname = _this select 1;
_pos = _this select 2;
_argent = _this select 3;
_argentPoche = _this select 4;
_prison = _this select 5;
_revenue = _this select 6;
_license = _this select 7;
_formations = _this select 8;
_loadout = _this select 9;
_time = _this select 10;

_query = format ["UPDATE players SET name = '%2', pos = '%3', argent = '%5', banque = '%4', prison = '%6', revenue = '%7', license = '%8', formations = '%9', loadout = '%10', time = '%11' WHERE uid = '%1'",_puid,_pname,_pos,_argent,_argentPoche,_prison,_revenue,_license,_formations,_loadout,_time];
_update = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];
