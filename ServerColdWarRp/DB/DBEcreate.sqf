_puid = _this select 0;
_Ename = _this select 1;

_query = format ["INSERT into entreprise (name, uid, banque) VALUES ('%1', '%2', '0')", _Ename,_puid];
_create = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];