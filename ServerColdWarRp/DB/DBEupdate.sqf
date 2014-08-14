_puid = _this select 0;
_Money = _this select 1;

_query = format ["UPDATE entreprise SET banque = '%2' WHERE uid = '%1'",_puid,_Money];
_update = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];
