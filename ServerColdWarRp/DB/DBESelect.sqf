////////////////////////////////////
//Script Par GreeFine
// Pour A3LEF
//recuperation reception des info DataBase server side
//////////////////////////////////////
_array = [93,91,32];
_puid = _this select 0;
_player = _this select 1;
_query = format ["SELECT banque FROM entreprise WHERE uid = '%1'", _puid];
_Eget = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];
_EgetT = toArray _Eget;
_EgetT = _EgetT - _array;
_EgetT = toString _EgetT;
_EgetT = format ["[%1]",_EgetT];
_EgetT = call compile _EgetT;
Eget = _EgetT;
_owner = owner _player;
_owner publicVariableClient "Eget";
