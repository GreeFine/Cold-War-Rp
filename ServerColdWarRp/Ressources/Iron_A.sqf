////////////////////////////////////
//Script Par GreeFine
// Pour Cold War Rp
//Spawn des ressources orienté Objet et non Zone
//////////////////////////////////////
Iron_A = true;
CIron = 0;
while {true} do
{
    waitUntil {Iron_A};
    //On/Off
    waitUntil {CIron < 20};
    //On verifie le nombre d'arbre déja present
    if (CWood < 10) then {Multiplier=8} else {Multiplier=5};
    _Temps = round(25+random(40)+(Multiplier*CIron));
    //Temps Aléatoir sur une base de 1 min minimum + en fonction du nombre arbre déja présent
    _NombreR = round(3+random(5));
    //Le nombre de ressource que la ressource contien
    _pos = round(random(10));
    //Position de Spawn de la ressources aléatoir
    sleep _Temps;
    switch (_pos) do {
     case 1: {_pos = (MarkerPos "Iron_A1")};
     case 2: {_pos = (MarkerPos "Iron_A2")};
     case 3: {_pos = (MarkerPos "Iron_A3")};
     case 4: {_pos = (MarkerPos "Iron_A4")};
     case 5: {_pos = (MarkerPos "Iron_A5")};
     case 6: {_pos = (MarkerPos "Iron_A6")};
     case 7: {_pos = (MarkerPos "Iron_A7")};
     case 8: {_pos = (MarkerPos "Iron_A8")};
     case 9: {_pos = (MarkerPos "Iron_A9")};
     case 10: {_pos = (MarkerPos "Iron_A10")};
       default {Iron_A = true};
    };
    //Ici on défini la position de la ressource
    CIron = CIron+1;publicVariable "CIron_A";
    Tree =  createVehicle ["sharpstone_01_lc",_pos,[],10,""];
    Tree setVariable ["CountR",_NombreR,true];
    Tree setVariable ["Collect",false,true];
};