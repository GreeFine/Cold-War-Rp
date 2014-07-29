player setVariable ["ArgentPoche",0, true];
player setVariable ["Menoter", 0, true];
player setVariable ["Pomme", 0, true];
player setVariable ["Fer", 0, true];
player setVariable ["Diamant", 0, true];
player setVariable ["Poids", 0, true];
player setVariable ["Boire", 100, true];
player setVariable ["Manger", 100, true];
hint "Tu as perdu ce que tu avais sur Toi !";

_H_Respawn = nil;
_KilledPos = _this select 0;
_H_Ru = markerpos "Hopital_Ru";_D_H_Ru = player distance _H_Ru;
_H_A = markerpos "Hopital_A";_D_H_A = player distance _H_A;
_H_R = markerpos "Hopital_R";_D_H_R = player distance _H_R;

if (_D_H_Ru < _D_H_A && _D_H_Ru < _D_H_R) Then {_H_Respawn = _H_Ru};
if (_D_H_A < _D_H_Ru && _D_H_A < _D_H_R) Then {_H_Respawn = _H_A};
if (_D_H_R < _D_H_Ru && _D_H_R < _D_H_A) Then {_H_Respawn = _H_R};
waitUntil {alive player};
player setpos _H_Respawn;
