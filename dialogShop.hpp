class Shop
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,List,Buy,Close};

	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0.4, 0.8 };
		x = 0.540; y = 0.19;
		w = 0.620; h = 0.470;
	};
	class MyMoney : BaseRscSingleText
	{
		idc = 9751;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.55; y = 0.2;
		w = 0.6;
	};
	class List : BaseRscComboBox
	{
		idc = 9750;
		moving = 1;
		colorSelectBackground[] = { 0.2, 0, 0.6, 0.8 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.55; y = 0.275;
		w = 0.6;
	};
	class Buy : BaseRscButton
	{
		idc = 9752;
		text = "Titre";
		action = "MenuChoix=true;";
		x = 0.55; y = 0.500;
		w = 0.6;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Fermer";
		action = "closeDialog 0;MenuChoix=true;MenuExit=true";
		x = 0.55; y = 0.575;
		w = 0.6;
	};
};