class MenuPermis
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {};
	controls[] = {Title,InfoT,CostT,DriverLicense,Info1,Cost1,DriverLicensePoidLourd,Info2,Cost2,AirLicense,Info3,Cost3,BoatLicense,Info4,Cost4,PistolLicense,Info5,Cost5,SableFormation,Info6,Cost6,BoisFormation,Info7,Cost7,PierreFormation,Info8,Cost8,FormationFer,Info9,Cost9,PetroleFormation,Info10,cost10,DiamantFormation,Info11,cost11,Close};
	objects[] = {};

class Title : BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Licences";
		x = 0.65; y = 0.2;
		w = 0.4;
	};
	class InfoT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Acquis";
		x = 1.05; y = 0.2;
		w = 0.1;
	};
	class CostT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Prix";
		x = 1.15; y = 0.2;
		w = 0.15;
	};
	class DriverLicense : BaseRscButton
	{
		idc = -1;
		text = "Acheter permis de conduire véhicule léger";
		action = "if(LicenseV >= 1) then {hint 'Tu as déja ce permis'} else {if((player getVariable 'MonArgent') >= 3250) then{player setVariable['MonArgent',((player getVariable 'MonArgent') - 3250),true]; LicenseV = 1;}};closeDialog 0; execVM 'menu\license.sqf';";
		x = 0.65; y = 0.275;
		w = 0.4;
	};
	class Info1: BaseRscSingleText
	{
		idc = 11157;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.275;
		w = 0.1;
	};
	class cost1: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "3250€";
		x = 1.15; y = 0.275;
		w = 0.15;
	};
	class DriverLicensePoidLourd : BaseRscButton
	{
		idc = -1;
		text = "Acheter permis de conduire poid lourd";
		action = "if(LicencesC >= 1) then {hint 'Tu as déja ce permis'} else {if((player getVariable 'MonArgent') >= 95000) then{player setVariable['MonArgent',((player getVariable 'MonArgent') - 95000),true]; LicencesC=1}};closeDialog 0; execVM 'menu\license.sqf';";
		x = 0.65; y = 0.350;
		w = 0.4;
	};
	class Info2: BaseRscSingleText
	{
		idc = 11165;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.350;
		w = 0.1;
	};
	class cost2: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "95000€";
		x = 1.15; y = 0.350;
		w = 0.15;
	};
	class AirLicense : BaseRscButton
	{
		idc = -1;
		text = "Acheter licence pilote";
		action = "if(LicencesA >= 1) then {hint 'Tu as déja ce permis'} else {if((player getVariable 'MonArgent') >= 370000) then{player setVariable['MonArgent',((player getVariable 'MonArgent') - 370000),true]; LicencesA=1;}};closeDialog 0; execVM 'menu\license.sqf';";
		x = 0.65; y = 0.425;
		w = 0.4;
	};
	class Info3: BaseRscSingleText
	{
		idc = 11159;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.425;
		w = 0.1;
	};
	class cost3: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "370000€";
		x = 1.15; y = 0.425;
		w = 0.15;
	};
	class BoatLicense : BaseRscButton
	{
		idc = -1;
		text = "Acheter permis bateaux";
		action = "if(LicencesB >= 1) then {hint 'Tu as déja ce permis'} else {if((player getVariable 'MonArgent') >= 40000) then{player setVariable['MonArgent',((player getVariable 'MonArgent') - 40000),true]; LicencesB=1}};closeDialog 0; execVM 'menu\license.sqf';";
		x = 0.65; y = 0.5;
		w = 0.4;
	};
	class Info4: BaseRscSingleText
	{
		idc = 11160;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.5;
		w = 0.1;
	};
	class cost4: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "$40000";
		x = 1.15; y = 0.5;
		w = 0.15;
	};
	class PistolLicense : BaseRscButton
	{
		idc = -1;
		text = "Acheter port d'armes";
		action = "if(LicencesAr >= 1) then {hint 'Tu as déja ce permis'} else {if((player getVariable 'MonArgent') >= 77500) then{player setVariable['MonArgent',((player getVariable 'MonArgent') - 77500),true];LicencesAr = 1;}};closeDialog 0; execVM 'menu\license.sqf';";
		x = 0.65; y = 0.575;
		w = 0.4;
	};
	class Info5: BaseRscSingleText
	{
		idc = 11164;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.575;
		w = 0.1;
	};
	class cost5: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "$77500";
		x = 1.15; y = 0.575;
		w = 0.15;
	};
	class FormationFer : BaseRscButton
	{
		idc = -1;
		text = "Formation Fer";
		action = "if(FormationF >= 1) then {hint 'Tu as déja ce permis'} else {if((player getVariable 'MonArgent') >= 6750) then{player setVariable['MonArgent',((player getVariable 'MonArgent') - 6750),true];FormationF=1;}};closeDialog 0; execVM 'menu\license.sqf';";
		x = 0.65; y = 0.650;
		w = 0.4;
	};
	class Info6: BaseRscSingleText
	{
		idc = 11174;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.650;
		w = 0.1;
	};
	class cost6: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "$6750";
		x = 1.15; y = 0.650;
		w = 0.15;
	};
	class PetroleFormation : BaseRscButton
	{
		idc = -1;
		text = "Formation Pétrole";
		action = "if(FormationP >= 1) then {hint 'Tu as déja ce permis'} else {if((player getVariable 'MonArgent') >= 225500) then{player setVariable['MonArgent',((player getVariable 'MonArgent') - 225500),true]; FormationP=1;}};closeDialog 0; execVM 'menu\license.sqf';";
		x = 0.65; y = 0.725;
		w = 0.4;
	};
	class Info7: BaseRscSingleText
	{
		idc = 11176;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.725;
		w = 0.1;
	};
	class cost7: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "$225500";
		x = 1.15; y = 0.725;
		w = 0.15;
	};
	  class Close : BaseRscButton
	{
		idc = -1;
		text = "Fermer";
		action = "closeDialog 0";
		x = 0.65; y = 0.800;
		w = 0.65;
	};
};

class MenuFormation
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {};
	controls[] = {Title,InfoT,CostT,FormationDrogue,Info1,Cost1,FormationArme,Info2,Cost2,Close};
	objects[] = {};

class Title : BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Licences";
		x = 0.65; y = 0.2;
		w = 0.4;
	};
	class InfoT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Acquis";
		x = 1.05; y = 0.2;
		w = 0.1;
	};
	class CostT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Prix";
		x = 1.15; y = 0.2;
		w = 0.15;
	};
	class FormationDrogue : BaseRscButton
	{
		idc = -1;
		text = "Formation Heroine";
		action = "if(FormationC >= 1) then {hint 'Tu as déja cette formation'} else {if((player getVariable 'ArgentPoche') >= 85000) then{player setVariable['ArgentPoche',((player getVariable 'ArgentPoche') - 85000),true]; FormationC=1;}};closeDialog 0; execVM 'menu\Formation.sqf';";
		x = 0.65; y = 0.275;
		w = 0.4;
	};
	class Info1: BaseRscSingleText
	{
		idc = 11157;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.275;
		w = 0.1;
	};
	class cost1: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "85000€";
		x = 1.15; y = 0.275;
		w = 0.15;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Fermer";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.65;
	};
};