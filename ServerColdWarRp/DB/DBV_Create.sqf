_puid = _this select 0;
_class = _this select 1;
_item = _this select 2;
_weapond = _this select 3;
_magazine = _this select 4;
_query = format ["INSERT into vehicule (uid, class, item, weapon, magazine) VALUES ('%1', '%2', '%3', '%4', '%5')", _puid,_class,_item,_weapond,_magazine];
_create = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];
/*
query = format ["INSERT into vehicule (uid, class, pos, item, weapon, magazine) VALUES ('76561197969165845', 'C_kart_01_F', '[2746.05,5767.38,0.0603456]', '[]', '[]', '[]')"];
_create = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", query];

Arma2NETMySQLCommand ['resistancelife', 'INSERT into vehicule (uid, class, pos, item, weapon, magazine) VALUES ('76561197969165845', 'C_SUV_01_F', '[2746.05,5767.38,0.0603456]', '[]', '[]', '[]')']
*/
