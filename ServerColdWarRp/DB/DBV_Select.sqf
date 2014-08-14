////////////////////////////////////
//Script Par GreeFine
// Pour A3LEF
//recuperation reception des info DataBase server side
//////////////////////////////////////
_array = [93,91,32];
_puid = _this select 0;
_player = _this select 1;
_query = format ["SELECT id,class, item, weapon, magazine FROM vehicule WHERE uid = '%1'", _puid];
_getV = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];
_getT = toArray _getV;
_getT = _getT - _array;
_getT = toString _getT;
_getT = format ["[%1]",_getT];
_getT = parseText _getT;
_getT =  call compile str _getT;
getV = _getT;
_owner = owner _player;
_owner publicVariableClient "getV";