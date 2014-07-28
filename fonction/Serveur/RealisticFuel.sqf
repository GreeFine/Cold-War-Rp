/*//////////////////////////////////////////////////////////////////////////////////////
author : GreeFine
Conctact adresse : greefine@hotmail.fr
Mission : ColdWarRp
Code written by GreeFine
Using this code or mission without GreeFine direct permission is forbidden
//////////////////////////////////////////////////////////////////////////////////////*/
while {true} do {
        waitUntil {vehicle player isKindOf "CAR" && (Driver vehicle player) == player};
                if (isEngineOn vehicle player) then {
                        _VSpeed = sqrt ((speed vehicle player)^2);
                        if (_VSpeed < 60) then {_VSpeed = 60};


                        _Consomation = (_VSpeed^2-((_VSpeed^2/2)+(_VSpeed*2)))/4000000;

                        _Inter = "---------------------------------------------";
                        _infodebug = (fuel vehicle player-_Consomation);
                        _temps = (1/_Consomation)*5;
                        hint format ["%1_Consomation = %2 %1 _infodebug = %3 %1 _Temps = %4",_Inter,_Consomation,_infodebug,_temps];


                        (vehicle player) setfuel (fuel vehicle player-_Consomation);
                        sleep 5;
                };
};