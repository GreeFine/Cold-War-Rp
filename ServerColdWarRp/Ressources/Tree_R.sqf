////////////////////////////////////
//Script Par GreeFine
// Pour Cold War Rp
//Spawn des ressources orienté Objet et non Zone
//////////////////////////////////////
Wood_R = true;
CWood_R = 0;
while {true} do
{
    waitUntil {Wood_R};
    //On/Off
    waitUntil {CWood_R < 30};
    //On verifie le nombre d'arbre déja present
    if (CWood_R < 10) then {Multiplier=10} else {Multiplier=5};
    _Temps = round(15+random(30)+(Multiplier*CWood1));
    //Temps Aléatoir sur une base de 1 min minimum + en fonction du nombre arbre déja présent
    _NombreR = round(1+random(2));
    //Le nombre de ressource que la ressource contien
    _pos = round(random(10));
    //Position de Spawn de la ressources aléatoir
    sleep _Temps;
    switch (_pos) do {
     case 1: {_pos = (MarkerPos "Tree_R1")};
     case 2: {_pos = (MarkerPos "Tree_R2")};
     case 3: {_pos = (MarkerPos "Tree_R3")};
     case 4: {_pos = (MarkerPos "Tree_R4")};
     case 5: {_pos = (MarkerPos "Tree_R5")};
     case 6: {_pos = (MarkerPos "Tree_R6")};
     case 7: {_pos = (MarkerPos "Tree_R7")};
     case 8: {_pos = (MarkerPos "Tree_R8")};
     case 9: {_pos = (MarkerPos "Tree_R9")};
     case 10: {_pos = (MarkerPos "Tree_R10")};
       default {Wood_R = false};
    };
    //Ici on défini la position de la ressource
    CWood_R = CWood_R+1;publicVariable "CWood_R";
    _Tree = createVehicle ["Land_WoodenLog_F",_pos,[],10,""];
    _Tree setVariable ["CountR",_NombreR,true];
    _Tree setVariable ["Collect",false,true];
};