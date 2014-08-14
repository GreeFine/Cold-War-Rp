while {true} do {
	MarchandRequest = [];
	publicVariable "MarchandRequest";
    sleep 1200;
     {
    _nombre = _x select 0;
    _Qui = _x select 1;
    _randM = _x select 2;
    _rand = round(random 6);
    switch _randM do {
        case 1: {_cargo = "CargoNord"};
        case 2: {_cargo = "CargoNordEst"};
        case 3: {_cargo = "CargoOuest"};
        case 4: {_cargo = "CargoSudOuest"};
        case 5: {_cargo = "CargoSud"};
        case 6: {_cargo = "CargoSudEst"};
        default {};
    };
	    switch _rand do {
	        case 0: {veh = createvehicle ["Land_Cargo40_grey_F",(MarkerPos _cargo),[],1,""];};
	        case 1: {veh = createvehicle ["Land_Cargo40_brick_red_F",(MarkerPos (_cargo+"1")),[],1,""];};
	        case 2: {veh = createvehicle ["Land_Cargo40_blue_F",(MarkerPos (_cargo+"2")),[],1,""];};
	        case 3: {veh = createvehicle ["Land_Cargo40_military_green_F",(MarkerPos (_cargo+"3")),[],1,""];};
	        case 4: {veh = createvehicle ["Land_Cargo40_red_F",(MarkerPos (_cargo+"4")),[],1,""];};
	        case 5: {veh = createvehicle ["Land_Cargo40_white_F",(MarkerPos (_cargo+"5")),[],1,""];};
	        case 6: {veh = createvehicle ["Land_Cargo40_yellow_F",(MarkerPos (_cargo+"6")),[],1,""];};
	        default {};
	    };

	    _armes = [];
	    for "_i" from 1 to _nombre do {
	    	_rand1 = round(random 100);
			if (_rand1 <= 22) Then {
	    		_rand2 = round(random 4);
	    		_armes1 = ["arifle_TRG21_F","arifle_Mk20_F"] select _rand2;
	    		_armes = _armes+[_armes1];
	    	};
	    	if (_rand1 < 22 && _rand1 <= 42) Then {
	    		_rand2 = round(random 4);
	    		_armes1 = ["arifle_Katiba_F","arifle_MX_F","arifle_mas_m4","arifle_mas_m4c","arifle_mas_m16","R3F_Famas_G2","R3F_Famas_G2_HG","R3F_Famas_surb","R3F_Famas_surb_HG"] select _rand2;
	    		_armes = _armes+[_armes1];
	    	};
	    	if (_rand1 < 42 && _rand1 <= 59) Then {
	    		_rand2 = round(random 4);
	    		_armes1 = ["arifle_MXM_F","arifle_MX_Black_F","arifle_MXM_Black_F","arifle_MX_SW_Black_F","R3F_HK416M_HG","arifle_mas_ak_74m","arifle_mas_saiga","arifle_mas_aks74","arifle_mas_aks74u"] select _rand2;
	    		_armes = _armes+[_armes1];
	    	};
	    	if (_rand1 < 59 && _rand1 <= 73) Then {
	    		_rand2 = round(random 4);
	    		_armes1 = ["R3F_Famas_G2_M203","R3F_Famas_surb_M203","arifle_mas_m4_gl","arifle_mas_m16_gl","arifle_mas_fal_m203"] select _rand2;
	    		_armes = _armes+[_armes1];
	    	};
	    	if (_rand1 < 73 && _rand1 <= 84) Then {
	    		_rand2 = round(random 4);
	    		_armes1 = ["LMG_Mk200_F","R3F_Minimi","LMG_mas_M249_F","LMG_mas_M249a_F"] select _rand2;
	    		_armes = _armes+[_armes1];
	    	};
	    	if (_rand1 > 84 && _rand1 <= 92) Then {
	    		_rand2 = round(random 2);
	    		_armes2 = ["arifle_mas_akms","arifle_mas_ak_74m_sf","arifle_mas_m70","arifle_mas_akm","LMG_mas_pkm_F","LMG_mas_m72_F","srifle_mas_svd"] select _rand2;
	    		_armes = _armes+[_armes2];
	    	};
	    	if (_rand1 > 92 && _rand1 <= 97) Then {
	    		_rand2 = round(random 3);
	    		_armes3 = ["srifle_EBR_F","srifle_DMR_01_F","LMG_Zafir_F","R3F_HK417M_HG","R3F_HK417S_HG","R3F_Minimi_762","arifle_mas_fal","srifle_mas_sr25","LMG_mas_Mk48_F","LMG_mas_M240_F"] select _rand2;
	    		_armes = _armes+[_armes3];
	    	};
	    	if (_rand1 > 97) Then {
	    		_rand2 = round(random 2);
	    		_armes4 = ["srifle_GM6_SOS_F","srifle_LRR_SOS_F","launch_RPG32_F","R3F_FRF2","srifle_mas_m24_d_h","mas_launch_RPG7_F"] select _rand2;
	    		_armes = _armes+ [_armes4];
	    	};
	    	sleep 0.2;

	    };

	    _Nbox = (_nombre/2)-1;
		_caise = createVehicle ["Box_East_WpsSpecial_F",position player,[],0,""];
		clearWeaponCargoGlobal _caise;
		clearMagazineCargoGlobal _caise;
		clearItemCargoGlobal _caise;
		_caise setpos position veh;
		_caise setdir 90;
		_caise addWeaponCargoGlobal [_armes select 0,1];

			for "_i" from 1 to _Nbox do {
				_caise1 = createVehicle ["Box_East_WpsSpecial_F",position player,[],0,""];
				clearWeaponCargoGlobal _caise1;
				clearMagazineCargoGlobal _caise1;
				clearItemCargoGlobal _caise1;
				_caise1 attachTo [_caise,[0,0,(_i*0.35)]];
				_caise1 addWeaponCargoGlobal [_armes select _i,1];
			};

			for "_i" from 0 to _Nbox do {
				_caise1 = createVehicle ["Box_East_WpsSpecial_F",position player,[],0,""];
				clearWeaponCargoGlobal _caise1;
				clearMagazineCargoGlobal _caise1;
				clearItemCargoGlobal _caise1;
				_caise1 attachTo [_caise,[0,1,(_i*0.35)]];
				_caise1 addWeaponCargoGlobal [_armes select (_i+(_Nbox+1)),1];
			};

    } forEach MarchandRequest;
};