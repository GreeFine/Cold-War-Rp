/*********************************************** Mapping_PNC **************************************************/
_PNJ = createGroup civilian;
_npcUnit = [];

/********************************************** Américain ********************************************/
//test avec indé OK!
_npc = _PNJ createUnit ["C_Nikos_aged", [3669.23,13114.9,0.00145149], [], 0, ""];
_npc switchmove "";
_npc setDir 269.233;
_npc setPos [3669.23,13114.9,0.00145149];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Vehicule Place Kavala",""]];

//test ave indé OK!!
_npc = _PNJ createUnit ["C_Nikos_aged", [3665.75,13098.3,0.00145245], [], 0, ""];
_npc switchmove "";
_npc setDir 294.472;
_npc setPos [3665.75,13098.3,0.00145245];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Vehicule VIP Place Kavala",""]];

//test avec indé mais liste vide!
_npc = _PNJ createUnit ["C_Nikos_aged", [3685.47,13109,0.35244267], [], 0, ""];
_npc switchmove "";
_npc setDir 101.829;
_npc setPos [3685.47,13109,0.35244267];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Items",""]];

//Ok mais liste item vide, verifier hauteur
_npc = _PNJ createUnit ["C_Nikos_aged", [8672.61,18277.9,0.00141907], [], 0, ""];
_npc switchmove "";
_npc setDir 243.261;
_npc setPos [8672.61,18277.9,0.00141907];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Items",""]];

//test avec indé! Attention remplace sac existant (et supprime son contenu!)
_npc = _PNJ createUnit ["C_Nikos_aged", [3683,13111.1,0.35243886], [], 0, ""];
_npc switchmove "";
_npc setDir 228.807;
_npc setPos [3683,13111.1,0.35243886];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Sac",""]];

//test avec indé ok! Attention remplace l'uniforme existant et son contenu!
_npc = _PNJ createUnit ["C_Nikos_aged", [3687.43,13112.6,0.35243886], [], 0, ""];
_npc switchmove "";
_npc setDir 45.1365;
_npc setPos [3687.43,13112.6,0.35243886];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Unifrom",""]];

//testé avec indé ok! Vérifier la hauteur!
_npc = _PNJ createUnit ["C_Nikos_aged", [3348.09,12897.3,1.50142217], [], 0, ""];
_npc switchmove "";
_npc setDir 59.1386;
_npc setPos [3348.09,12897.3,1.50142217];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Bateau Kavala",""]];

//testé avec indé ok!!
_npc = _PNJ createUnit ["C_Nikos_aged", [3645,13362.9,0.0014019], [], 0, ""];
_npc switchmove "";
_npc setDir 312.242;
_npc setPos [3645,13362.9,0.0014019];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Camion Kavala",""]];

//testé avec indé ok!! Remplace l'existant!!'
_npc = _PNJ createUnit ["C_Nikos_aged", [4971.42,11369.9,0.00144196], [], 0, ""];
_npc switchmove "";
_npc setDir 102.58;
_npc setPos [4971.42,11369.9,0.00144196];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"ArmesL",""]];

//testé avec indé ok!! Remplace l'existant!! ET list = a celle du legal!
_npc = _PNJ createUnit ["C_Nikos_aged", [8081.65,14431,0.00125122], [], 0, ""];
_npc switchmove "";
_npc setDir 331.057;
_npc setPos [8081.65,14431,0.00125122];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"ArmesI",""]];

//Pas de liste!Et avant modif, pas de point d'entre dans la fonction'
_npc = _PNJ createUnit ["C_Nikos_aged", [8082.08,14445,0.00144958], [], 0, ""];
_npc switchmove "";
_npc setDir 232.307;
_npc setPos [8082.08,14445,0.00144958];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"VestI",""]];

//testé avec indé ok!! Remplace l'existant!!
_npc = _PNJ createUnit ["C_Nikos_aged", [4996.55,11354.5,0.0014801], [], 0, ""];
_npc switchmove "";
_npc setDir 102.58;
_npc setPos [4996.55,11354.5,0.0014801];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"ArmesV",""]];

//ok sur place Kavala mais listes vide pour l'instant!'
_npc = _PNJ createUnit ['C_Nikos_aged', [3637.29,13101.8,0.15143886], [], 0, ""];
_npc switchmove "";
_npc setDir 356.559;
_npc setPos [3637.29,13100.3,0.15143886];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Alimentation',""]];

//ok mais listes vide pour l'instant!
_npc = _PNJ createUnit ['C_Nikos_aged', [9009.03,12058.3,0.50143623], [], 0, ""];
_npc switchmove "";
_npc setDir 290.781;
_npc setPos [9009.03,12058.3,0.50143623];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Alimentation',""]];

//ok mais listes vide pour l'instant!
_npc = _PNJ createUnit ['C_Nikos_aged', [14607,16787.6,0.00143814], [], 0, ""];
_npc switchmove "";
_npc setDir 316.704;
_npc setPos [14607,16787.6,0.00143814];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Alimentation',""]];

//testé avec indé ok!!
_npc = _PNJ createUnit ['C_Nikos_aged', [14735,16792.2,0.00143814], [], 0, ""];
_npc switchmove "";
_npc setDir 130.699;
_npc setPos [14735,16792.2,0.00143814];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Helico Terminal',""]];

//testé avec indé ok!!
_npc = _PNJ createUnit ['C_Nikos_aged', [14773.1,16827.9,0.00143814], [], 0, ""];
_npc switchmove "";
_npc setDir 132.785;
_npc setPos [14773.1,16827.9,0.00143814];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Helico VIP Terminal',""]];

/******************************************************Police**************************************************************/

_npc = _PNJ createUnit ['C_Nikos_aged', [16027.4,17036.1,0.0014534], [], 0, ""];
_npc switchmove "";
_npc setDir 125.887;
_npc setPos [16027.4,17036.1,0.0014534];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vehicule Police Frontiere',""]];

_npc = _PNJ createUnit ['C_Nikos_aged', [16151.3,16961.7,0.0014534], [], 0, ""];
_npc switchmove "";
_npc setDir 298.601;
_npc setPos [16151.3,16961.7,0.0014534];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Alimentation',""]];

_npc = _PNJ createUnit ['C_Nikos_aged', [16086.2,16917,0.00140476], [], 0, ""];
_npc switchmove "";
_npc setDir 356.31;
_npc setPos [16086.2,16917,0.00140476];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Items',""]];

_npc = _PNJ createUnit ['C_Nikos_aged', [16023.8,16958.3,0.00153255], [], 0, ""];
_npc switchmove "";
_npc setDir 56.773;
_npc setPos [16023.8,16958.3,0.00153255];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Arme Police',""]];

/***************************************************Américain*****************************************************************/



/***************************************************Indépendant*****************************************************************/
_npc = _PNJ createUnit ["C_Nikos_aged", [2720.95,22067.6,0.00151539], [], 0, ""];
_npc switchmove "";
_npc setDir 55.6241;
_npc setPos [2720.95,22067.6,0.00151539];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Bateau independant",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [4525.34,21389,0.00131226], [], 0, ""];
_npc switchmove "";
_npc setDir 84.3314;
_npc setPos [4525.34,21389,0.00131226];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"ArmesL",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [4555.19,21399.5,0.00146484], [], 0, ""];
_npc switchmove "";
_npc setDir 46.6329;
_npc setPos [4555.19,21399.5,0.00146484];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Alimentation",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [4525.34,21389,0.00131226], [], 0, ""];
_npc switchmove "";
_npc setDir 1.63365;
_npc setPos [4525.34,21389,0.00131226];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"UnifromL",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [4596.93,21389.9,0.00143433], [], 0, ""];
_npc switchmove "";
_npc setDir 224.705;
_npc setPos [4596.93,21389.9,0.00143433];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Vehicule",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [9180.83,21576.1,0.00161362], [], 0, ""];
_npc switchmove "";
_npc setDir 317.004;
_npc setPos [9180.83,21576.1,0.00161362];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Helico",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [9170.58,21569.4,0.00143814], [], 0, ""];
_npc switchmove "";
_npc setDir 316.675;
_npc setPos [9170.58,21569.4,0.00143814];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Helico",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [13926.7,23106.7,0.00143862], [], 0, ""];
_npc switchmove "";
_npc setDir 46.1404;
_npc setPos [13926.7,23106.7,0.00143862];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"ArmesL",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [13924.1,23109.6,0.00143862], [], 0, ""];
_npc switchmove "";
_npc setDir 48.4562;
_npc setPos [13924.1,23109.6,0.00143862];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"UnifromI",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [14306.2,18602,0.00149345], [], 0, ""];
_npc switchmove "";
_npc setDir 200.816;
_npc setPos [14306.2,18602,0.00149345];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Vehicule",""]];

_npc = _PNJ createUnit ["C_Nikos_aged", [13988.4,18571.3,0.00143814], [], 0, ""];
_npc switchmove "";
_npc setDir 28.3412;
_npc setPos [13988.4,18571.3,0.00143814];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,"Alimentation",""]];

/***************Vente**************/
_npc = _PNJ createUnit ['C_Nikos_aged', [7326.55,13987.6,0.00143433], [], 0, ""];
_npc switchmove "";
_npc setDir 164.656;
_npc setPos [7326.55,13987.6,0.00143433];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[11,12],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [12764.5,14244.4,0.00142705], [], 0, ""];
_npc switchmove "";
_npc setDir 349.268;
_npc setPos [12764.5,14244.4,0.00142705];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[3],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [12360,15713.6,0.00143814], [], 0, ""];
_npc switchmove "";
_npc setDir 219;
_npc setPos [12360,15713.6,0.00143814];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[6],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [3469.75,12790.8,0.00143909], [], 0, ""];
_npc switchmove "";
_npc setDir 60;
_npc setPos [3469.75,12790.8,0.00143909];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[0],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [3519.76,12739.3,0.00144291], [], 0, ""];
_npc switchmove "";
_npc setDir 303.006;
_npc setPos [3519.76,12739.3,0.00144291];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[1],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [3045.33,12638.2,0.00139761], [], 0, ""];
_npc switchmove "";
_npc setDir 303.006;
_npc setPos [3045.33,12638.2,0.00139761];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[8],"side player == civilian"]]];


_npc = _PNJ createUnit ['C_Nikos_aged', [3030.23,12612.5,0.00154614], [], 0, ""];
_npc switchmove "";
_npc setDir 357.006;
_npc setPos [3030.23,12612.5,0.00154614];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[7],"side player == civilian"]]];


_npc = _PNJ createUnit ['C_Nikos_aged', [3277.83,12452.3,0.00140762], [], 0, ""];
_npc switchmove "";
_npc setDir 344.15;
_npc setPos [3277.83,12452.3,0.00140762];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[2],"side player == civilian"]]];


_npc = _PNJ createUnit ['C_Nikos_aged', [14344.3,18993.5,0.00143433], [], 0, ""];
_npc switchmove "";
_npc setDir 191.451;
_npc setPos [14344.3,18993.5,0.00143433];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[2],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [13977.3,18712.4,0.00163841], [], 0, ""];
_npc switchmove "";
_npc setDir 220.074;
_npc setPos [13977.3,18712.4,0.00163841];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[1],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [13977.3,18712.4,0.00163841], [], 0, ""];
_npc switchmove "";
_npc setDir 220.074;
_npc setPos [13977.3,18712.4,0.00163841];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[1],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [8880.54,23452.7,0.00148773], [], 0, ""];
_npc switchmove "";
_npc setDir 331;
_npc setPos [8880.54,23452.7,0.00148773];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[10],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [19849.3,17871.9,0.00143814], [], 0, ""];
_npc switchmove "";
_npc setDir 256;
_npc setPos [19849.3,17871.9,0.00143814];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[11,12],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [26069.9,19716,0.00140524], [], 0, ""];
_npc switchmove "";
_npc setDir 23;
_npc setPos [26069.9,19716,0.00140524];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[9],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [26069.9,19716,0.00140524], [], 0, ""];
_npc switchmove "";
_npc setDir 23;
_npc setPos [26069.9,19716,0.00140524];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[9],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [21339.1,16220,0.00144005], [], 0, ""];
_npc switchmove "";
_npc setDir 41;
_npc setPos [21339.1,16220,0.00144005];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[4],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [21339.1,16220,0.00144005], [], 0, ""];
_npc switchmove "";
_npc setDir 41;
_npc setPos [21339.1,16220,0.00144005];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[4],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [19432.6,13246.8,0.00144577], [], 0, ""];
_npc switchmove "";
_npc setDir 325;
_npc setPos [19432.6,13246.8,0.00144577];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[3],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [21313.4,11815.6,0.00143909], [], 0, ""];
_npc switchmove "";
_npc setDir 318;
_npc setPos [21313.4,11815.6,0.00143909];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[10],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [16553.9,12393.9,0.00142717], [], 0, ""];
_npc switchmove "";
_npc setDir 318;
_npc setPos [16553.9,12393.9,0.00142717];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[7,8],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [16553.9,12393.9,0.00142717], [], 0, ""];
_npc switchmove "";
_npc setDir 318;
_npc setPos [16553.9,12393.9,0.00142717];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[7,8],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [16455.7,12629.3,0.00140429], [], 0, ""];
_npc switchmove "";
_npc setDir 46;
_npc setPos [16455.7,12629.3,0.00140429];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[0,1],"side player == civilian"]]];

_npc = _PNJ createUnit ['C_Nikos_aged', [16455.7,12629.3,0.00140429], [], 0, ""];
_npc switchmove "";
_npc setDir 46;
_npc setPos [16455.7,12629.3,0.00140429];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[[_npc,'Vente',[[0,1],"side player == civilian"]]];




/*************************************************** Indépendant *****************************************************************/
/*
_npc = _PNJ createUnit ['C_Nikos_aged', [], [], 0, ""];
_npc switchmove "";
_npc setDir ;
_npc setPos [];
_npc allowDammage false;
_npc enableSimulation false;
_npcUnit = _npcUnit+[_npc,'',""];
*/

npcUnit = _npcUnit;publicVariable "npcUnit";