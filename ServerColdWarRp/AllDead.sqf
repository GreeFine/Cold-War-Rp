fnc_allDead = {
if (_this isKindOf "MAN") Then { sleep 5;deleteVehicle _this };
if (_this isKindOf "CAR") Then { sleep 300;deleteVehicle _this };
alldead_S = alldead_S-1;
};

alldead_S = 0;
_alldead = false;
while {true} do {
	waitUntil {count alldead > alldead_S};
	_alldead = alldead select alldead_S;
	_alldead spawn fnc_allDead;
	alldead_S = alldead_S+1;
	sleep 0.05;
};


