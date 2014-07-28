class BankMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,InfoMyBank,ArgentPlacer,TextEdit,Withdraw,Deposit,Placement,Transfer,Close};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.715;
	};
	class MyMoney : BaseRscSingleText
	{
		idc = 11115;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class InfoMyBank : BaseRscSingleText
	{
		idc = 11116;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class ArgentPlacer : BaseRscSingleText
	{
		idc = 11124;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11117;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.425;
		w = 0.5;
	};
	class Withdraw : BaseRscButton
	{
		idc = 11118;
		text = "Mettre en poche";
		action = "execVM 'menu\ArgentVersPoche.sqf'";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
	class Deposit : BaseRscButton
	{
		idc = 11119;
		text = "Mettre sur mon compte";
		action = "execVM 'menu\ArgentVersBanque.sqf'";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
	class Placement : BaseRscButton
	{
		idc = 11123;
		text = "Mettre sur mon livré A";
		action = "execVM 'menu\ArgentRevenu.sqf'";
		x = 0.65; y = 0.650;
		w = 0.5;
	};
	class Transfer : BaseRscButton
	{
		idc = -1;
		text = "Faire un virement";
		action = " execVM 'menu\transfermenu.sqf'";
		x = 0.65; y = 0.725;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Fermer";
		action = "closeDialog 0";
		x = 0.65; y = 0.800;
		w = 0.5;
	};
};

class BanqueTransferMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {InfoMyBank,PlayerList,TextEdit,Transfer,Close};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.545;
	};
	class InfoMyBank : BaseRscSingleText
	{
		idc = 11164;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class PlayerList : BaseRscComboBox
	{
		idc = 11165;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11166;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.500;
		w = 0.5;
	};
	class Transfer : BaseRscButton
	{
		idc = 11167;
		text = "Transferer";
		action = "execVM 'fonction\Serveur\transferArgent.sqf'";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Fermer";
		action = " execVM 'menu\MenuBanque.sqf'";
		x = 0.65; y = 0.650;
		w = 0.5;
	};
};

class MenuJoueur
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MonArgent,ArgentPlacer,Poids,ListPermis,ListRessource,Enter,telephone,Close};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.575;
	};
	class MonArgent : BaseRscSingleText
	{
		idc = 77771;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class ArgentPlacer : BaseRscSingleText
	{
		idc = 77772;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Poids : BaseRscSingleText
	{
		idc = 77775;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class ListPermis : BaseRscComboBox
	{
		idc = 77773;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.425;
		w = 0.5;
	};
	class ListRessource : BaseRscComboBox
	{
		idc = 77774;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.460;
		w = 0.5;
	};
	class Enter : BaseRscButton
	{
		idc = 77775;
		text = "Donner liquide";
		action = " execVM 'fonction\serveur\DonnerArgent.sqf'";
		x = 0.65; y = 0.500;
		w = 0.5;
	};
	class telephone : BaseRscButton
	{
		idc = 77776;
		text = "Télephone";
		action = "createdialog 'MenuTelephone'";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Fermer";
		action = "closeDialog 0";
		x = 0.65; y = 0.650;
		w = 0.5;
	};

};

class MenuGarage
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {NomduGarage,NombredeVoiture,ListVehiculeSauvegarde,ChargerVehicule};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.275;
	};
	class NomduGarage : BaseRscSingleText
	{
		idc = 77761;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class NombredeVoiture : BaseRscSingleText
	{
		idc = 77762;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class ListVehiculeSauvegarde : BaseRscComboBox
	{
		idc = 77763;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.345;
		w = 0.5;
	};
	class ChargerVehicule : BaseRscButton
	{
		idc = 11149;
		text = "Charger Voiture";
		action = "MenuChoix=true";
		x = 0.65; y = 0.375;
		w = 0.5;
	};
};

class DonnerArgent
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {ArgentPoche,JoueurAutour,TextEdit,Donner};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.425;
	};
	class ArgentPoche : BaseRscSingleText
	{
		idc = 77711;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class JoueurAutour : BaseRscComboBox
	{
		idc = 77712;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 77713;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Donner : BaseRscButton
	{
		idc = 77714;
		text = "Donner Argent";
		action = " execVM 'fonction\serveur\DonnerArgent1.sqf'";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class MenuHelico
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {NomduGarage,NombredeHelico,ListHelicoSauvegarde,ChargerHeico};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.275;
	};
	class NomduGarage : BaseRscSingleText
	{
		idc = 77741;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class NombredeHelico : BaseRscSingleText
	{
		idc = 77742;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class ListHelicoSauvegarde : BaseRscComboBox
	{
		idc = 77743;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.345;
		w = 0.5;
	};
	class ChargerHeico : BaseRscButton
	{
		idc = 77744;
		text = "Charger Voiture";
		action = " execVM 'fonction\Civil\CHelicoS.sqf'";
		x = 0.65; y = 0.375;
		w = 0.5;
	};
};

class MenuAmende
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {JoueurCible,ListAmende,Amende};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.275;
	};
	class JoueurCible : BaseRscSingleText
	{
		idc = 77751;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class ListAmende : BaseRscComboBox
	{
		idc = 77752;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Amende : BaseRscButton
	{
		idc = 77753;
		text = "Amendé le joeur";
		action = " execVM 'fonction\Pol\Amende.sqf'";
		x = 0.65; y = 0.305;
		w = 0.5;
	};
};

class MenuFarm
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {NomduVehicule,PoidRessource,ListRessource,TextEdit,FarmVehicule};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.350;
	};
	class NomduVehicule : BaseRscSingleText
	{
		idc = 77781;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class PoidRessource : BaseRscSingleText
	{
		idc = 77782;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class ListRessource : BaseRscComboBox
	{
		idc = 77783;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.345;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 77784;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.375;
		w = 0.5;
	};
	class FarmVehicule : BaseRscButton
	{
		idc = 11189;
		text = "Mettre Dans le Vehicule";
		action = " execVM 'fonction\Civil\FarmVehicule.sqf'";
		x = 0.65; y = 0.450;
		w = 0.5;
	};
};

class MenuRecupFarm
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {NomduVehicule,PoidRessource,ListRessource,TextEdit,FarmVehicule};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.350;
	};
	class NomduVehicule : BaseRscSingleText
	{
		idc = 77791;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class PoidRessource : BaseRscSingleText
	{
		idc = 77792;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class ListRessource : BaseRscComboBox
	{
		idc = 77793;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.345;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 77794;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.375;
		w = 0.5;
	};
	class FarmVehicule : BaseRscButton
	{
		idc = 11199;
		text = "Recupére Farm Dans le Vehicule";
		action = " execVM 'fonction\Civil\RecupFarmVehicule.sqf'";
		x = 0.65; y = 0.450;
		w = 0.5;
	};
};

class MenuTransformation
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {ArgentPoche,ObjectsATransfo,TextEdit,Transformer};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.425;
	};
	class ArgentPoche : BaseRscSingleText
	{
		idc = 77111;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class ObjectsATransfo : BaseRscSingleText
	{
		idc = 77112;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 77113;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Transformer : BaseRscButton
	{
		idc = 77114;
		text = "Transformer";
		action = " execVM 'Shop\Transformation.sqf'";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class MenuPrison
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {JoueurCible,TextEdit,Prison};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.275;
	};
	class JoueurCible : BaseRscSingleText
	{
		idc = 77131;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 77132;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.375;
		w = 0.5;
	};
	class Prison : BaseRscButton
	{
		idc = 77133;
		text = "Mettre en prison";
		action = " execVM 'fonction\Pol\Prison.sqf'";
		x = 0.65; y = 0.305;
		w = 0.5;
	};
};




class MenuTelephone
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {Numeros,TextEditNumeros,Text,TextEditText,Envoyer};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.400;
	};
	class Numeros: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Numéros de Télephone";
		x = 0.65; y = 0.200;
		w = 0.5;
	};
	class TextEditNumeros : BaseRscTextBox
	{
		idc = 77182;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Text: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Text de votre Message";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class TextEditText : BaseRscTextBox
	{
		idc = 77183;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.425;
		w = 0.5;
	};
	class Envoyer : BaseRscButton
	{
		idc = 77133;
		text = "Envoyer";
		action = " execVM 'fonction\serveur\telephone_E.sqf'";
		x = 0.65; y = 0.500;
		w = 0.5;
	};
};

class MenuProfile
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {TexteAffichage,Rpname,Buton,Image};

	class Background: BaseRscBox
	{
		colorBackground[] = { 0, 0, 0.3, 0.7 };
		idc = -1;
		x = 0;
		y = 0;
		w = 1;
		h = 1;
	};
	class TexteAffichage: BaseRscSingleText
	{
		text = "Entrer Votre prénom et Nom Rp";
		idc = 1991;
		x = 0.55;
		y = 0.04;
		w = 0.425;
		h = 0.92;
	};
	class Rpname: BaseRscTextBox
	{
		sizeEx = 0.07;
		idc = 1992;
		x = 0.1375;
		y = 0.72;
		w = 0.2625;
		h = 0.1;
	};
	class Buton: BaseRscButton
	{
		idc = -1;
		text = "Ok";
		action = "execVM 'fonction\Serveur\DBCreateRequest.sqf'";
		x = 0.2125;
		y = 0.86;
		w = 0.1125;
		h = 0.08;
	};
	class Image: BaseRscPicture
	{
		idc = -1;
		text = "images\loadScreen.paa";
		x = 0.025;
		y = 0.04;
		w = 0.475;
		h = 0.6;
	};
};

class EntrepriseC
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {TexteAffichage,Rpname,Buton,Image};

	class Background: BaseRscBox
	{
		colorBackground[] = { 0, 0, 0.3, 0.7 };
		idc = -1;
		x = 0;
		y = 0;
		w = 1;
		h = 1;
	};
	class TexteAffichage: BaseRscSingleText
	{
		sizeEx = 0.07;
		text = "Entrer le nom de Votre Entreprise, Prix = 30 000€";
		idc = -1;
		x = 0.55;
		y = 0.04;
		w = 0.425;
		h = 0.92;
	};
	class Rpname: BaseRscTextBox
	{
		idc = 1996;
		sizeEx = 0.07;
		x = 0.1375;
		y = 0.72;
		w = 0.2625;
		h = 0.1;
	};
	class Buton: BaseRscButton
	{
		idc = -1;
		text = "Confirmer";
		action = "MenuChoix=true";
		x = 0.2125;
		y = 0.86;
		w = 0.1125;
		h = 0.08;
	};
	class Image: BaseRscPicture
	{
		idc = -1;
		text = "images\loadScreen.paa";
		x = 0.025;
		y = 0.04;
		w = 0.475;
		h = 0.6;
	};
};