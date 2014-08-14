_puid = _this select 0;
_pname = _this select 1;
_Rpname = _this select 2;
_query = format ["INSERT into players (uid, name, token, pos, argent, banque, license, formations, prison, vip, revenue, rpname, rank, loadout, time) VALUES ('%1', '[%2]', '0', '[2851,6009,0]','0', '10000', '[0,0,0,0,0]', '[0,0,0,0]', '0', '0', '1000', '[%3]', '0', '[]', 0)", _puid,_pname,_Rpname];
_create = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];

/*
query = format ["INSERT into players (uid ,name, token, argent, banque, license, formations, prison, vip, revenue, rpname) VALUES ('%1' ,'%2', '0', '0', '10000', '[0,0,0,0,0]', '[0,0,0,0]', '0', '0', '1000', 'Error')", puid,pname];
create = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", query];
*/