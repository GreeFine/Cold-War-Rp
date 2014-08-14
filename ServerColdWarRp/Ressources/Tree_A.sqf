////////////////////////////////////
//Script Par GreeFine
// Pour Cold War Rp
//Spawn des ressources orienté Objet et non Zone
//////////////////////////////////////
Wood_A = true;
CWood_A = 0;
while {true} do
{
    waitUntil {Wood_A};
    //On/Off
    waitUntil {CWood_A < 30};
    //On verifie le nombre d'arbre déja present
    if (CWood_A < 10) then {Multiplier=10} else {Multiplier=5};
    _Temps = round(15+random(30)+(Multiplier*CWood_A));
    //Temps Aléatoir sur une base de 1 min minimum + en fonction du nombre arbre déja présent
    _NombreR = round(1+random(2));
    //Le nombre de ressource que la ressource contien
    _pos = round(random(10));
    //Position de Spawn de la ressources aléatoir
    sleep _Temps;
    switch (_pos) do {
     case 1: {_pos = (MarkerPos "Tree_A1")};
     case 2: {_pos = (MarkerPos "Tree_A2")};
     case 3: {_pos = (MarkerPos "Tree_A3")};
     case 4: {_pos = (MarkerPos "Tree_A4")};
     case 5: {_pos = (MarkerPos "Tree_A5")};
     case 6: {_pos = (MarkerPos "Tree_A6")};
     case 7: {_pos = (MarkerPos "Tree_A7")};
     case 8: {_pos = (MarkerPos "Tree_A8")};
     case 9: {_pos = (MarkerPos "Tree_A9")};
     case 10: {_pos = (MarkerPos "Tree_A10")};
       default {Wood_A = false};
    };
    //Ici on défini la position de la ressource
    CWood_A = CWood_A+1;publicVariable "CWood_A";
    Tree =  createVehicle ["Land_WoodenLog_F",_pos,[],10,""];
    Tree setVariable ["CountR",_NombreR,true];
    Tree setVariable ["Collect",false,true];
};