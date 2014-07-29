_ATransformer = (floor parseNumber (ctrlText 77172));
//	_Selecteur = QuelFamille;
//		_QuelGate = ["FrenchCoGate","PatouchlabitGate"] select _Selecteur;

//	if (_QuelGate == "FrenchCoGate") then {
//if (_ATransformer == 7590) then {
//	if (FrenchCoGate == 1) then {
//		 FrenchCoGate_1 setPos;
//		 FrenchCoGate_2 setPos;
//		 FrenchCoGate_3 setPos;
//		 FrenchCoGate_4 setPos;
//		 FrenchCoGate_5 setPos;
//		 FrenchCoGate_6 setPos;
//		sleep 0.5;
//		FrenchCoGate = 0;
//		publicVariable "FrenchCoGate";
//		hint "La porte est ouverte";
//			} else {
//					FrenchCoGate_1 setPos;
//					FrenchCoGate_2 setPos;
//					FrenchCoGate_3 setPos;
//					FrenchCoGate_4 setPos;
//					FrenchCoGate_5 setPos;
//					FrenchCoGate_6 setPos;
//					sleep 0.5;
//					FrenchCoGate = 1;
//					publicVariable "FrenchCoGate";
//					hint "La porte est Fermer";
//					};
//							} else {Hint "Mauvais Mot De Passe"};
//											};

//	if (_QuelGate == "PatouchlabitGate") then {
if (_ATransformer == 301996) then {
	if (PatouchlabitGate == 1) then {
		PatouchlabitGate_1 setPos [-180,0.000837987,-2.5957];
		PatouchlabitGate_2 setPos [-180,0.000837987,-2.5957];
		PatouchlabitGate_3 setPos [-180,0.000837987,-2.5957];
		PatouchlabitGate_4 setPos [-180,0.000837987,-2.5957];
		PatouchlabitGate_5 setPos [-180,0.000837987,-2.5957];
		PatouchlabitGate_6 setPos [-180,0.000837987,-2.5957];
		PatouchlabitGate_7 setPos [-180,0.000837987,-2.5957];
		sleep 0.5;
		PatouchlabitGate = 0;
		publicVariable "PatouchlabitGate";
		hint "La porte est ouverte";
			} else {
					PatouchlabitGate_1 setPos [18404.3,15515.6,0.00825882];
					PatouchlabitGate_2 setPos [18411.6,15516.2,0.0318375];
					PatouchlabitGate_3 setPos [18407.6,15519.9,0.0128021];
					PatouchlabitGate_4 setPos [18407.7,15517.5,-0.040802];
					PatouchlabitGate_5 setPos [18407.6,15515.1,-0.0193329];
					PatouchlabitGate_6 setPos [18407.6,15515.1,-0.0193329];
					PatouchlabitGate_7 setPos [18407.1,15512,0.00521851];
					sleep 0.5;
					PatouchlabitGate = 1;
					publicVariable "PatouchlabitGate";
					hint "La porte est Fermer";
					};
							} else {Hint "Mauvais Mot De Passe"};
//											};