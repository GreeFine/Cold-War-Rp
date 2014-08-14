////////////////////////////////////
//Script Par GreeFine
// Pour Cold War Rp
//Spawn des ressources orienté Objet et non Zone
//////////////////////////////////////
Wood = true;
CWood = 0;
while {true} do
{
    waitUntil {Wood};
    //On/Off
    waitUntil {CWood < 30};
    //On verifie le nombre d'arbre déja present
    _pos = random(10);
    //Position de Spawn de la ressources aléatoir
    _Temps = (60+random(60)+(15*CWood));
    //Temps Aléatoir sur une base de 1 min minimum + en fonction du nombre arbre déja présent
    _NombreR = (3+random(5));
    //Le nombre de ressource que la ressource contien
    sleep _Temps;
    switch (_pos) do {
     case 1: {_pos = [14583.3,16739.1,0.00143814]};
      case 2: {_pos = 1};
       case 3: {_pos = 1};
        case 4: {_pos = 1};
         case 5: {_pos = 1};
       default {Wood = 0};
    };
    //Ici on défini la position de la ressource
    CWood = CWood+1;
    Tree =  createVehicle ["Land_WoodenLog_F",_pos,[],10,""];
    Tree setVariable ["CountR",_NombreR,true];
    Tree setVariable ["Collect",false,true];
};
/*
["Salema_F","School_Salema_F","Ornate_random_F","Mackerel_F","Tuna_F","Mullet_F","Dolphin_F","CatShark_F"]
*/