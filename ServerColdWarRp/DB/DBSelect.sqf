////////////////////////////////////
//Script Par GreeFine
// Pour A3LEF
//recuperation reception des info DataBase server side
//////////////////////////////////////
_array = [93,91,32];
_puid = _this select 0;
_player = _this select 1;
_query = format ["SELECT name, token, pos, argent, banque, license, formations, prison, vip, revenue, rpname, rank, loadout, time FROM players WHERE uid = '%1'", _puid];
_get = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];
_getT = toArray _get;
_getT = _getT - _array;
_getT = toString _getT;
_getT = format ["[%1]",_getT];
_getT = call compile _getT;
get = _getT;
_owner = owner _player;
_owner publicVariableClient "get";

/*
query = format ["SELECT name, token, argent, banque, license, formations, prison, vip, revenue, rpname FROM players WHERE uid = '76561197969165845'"];
test = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", query];
publicVariable "test";

test1 = toArray test1;
test1 = test1 - array;
test1 = toString test1;
test1 = format ["[%1]",test1];
test1 = call compile test1;

*/
