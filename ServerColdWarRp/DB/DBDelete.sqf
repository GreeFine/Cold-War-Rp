_array = [93,91,34,32];
_Vid = _this select 0;
_Vid = toArray str _Vid;
_Vid = _Vid - _array;
_Vid = toString _Vid;

_query = format ["DELETE from vehicule WHERE id = '%1'",_Vid];
_get = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', '%1']", _query];

/*
array = [93,91,34,32];
Vid = toArray str Vid;
Vid = Vid - array;
Vid = toString Vid;
/*