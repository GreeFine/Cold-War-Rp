_time = "Arma2Net.Unmanaged" callExtension "Arma2NETMySQLCommand ['resistancelife', 'SELECT time FROM players WHERE uid = 'Serveur'']";
waitUntil {!isnil {_time}};
_time = call compile _time;
_time = call compile (((_time select 0) select 0) select 0);

while {true} do {
	_time = _time+120;
  	sleep 120;
	_update = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['resistancelife', 'UPDATE players SET time = '%1' WHERE uid = 'Serveur'']",_time];
};