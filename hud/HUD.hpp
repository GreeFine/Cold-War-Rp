class RscPicture
{
	access = 0;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	fixedWidth = 0;
	font = "TahomaB";
	h = 0.15;
	idc = -1;
	lineSpacing = 0;
	shadow = 0;
	sizeEx = 0;
	style = 48;
	text = "";
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	tooltipColorText[] = {1,1,1,1};
	type = 0;
	w = 0.2;
	x = 0;
	y = 0;
};

class RscText
{
	access = 0;
	colorBackground[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0.5};
	colorText[] = {0,1,0,1};
	fixedWidth = 0;
	font = "PuristaMedium";
	h = 0.037;
	idc = -1;
	linespacing = 1;
	shadow = 1;
	SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	style = ST_CENTER;
	text = "";
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	tooltipColorText[] = {1,1,1,1};
	type = 0;
	w = 0.3;
	x = 0;
	y = 0;
};

class RscTitles
{

	class GreeFine_HUD
   	{

		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration= 99999999999999999999999999999999999999999999;
		fadeout=0;
		name="GreeFine_HUD";
		onLoad="uiNamespace setVariable ['GreeFine_HUD',_this select 0]";

		class ControlsBackground
		{

			class RscPicture_1200: RscPicture
			{
				idc = -1;
				x = 0.813191  * safezoneW + safezoneX;
				y = 0.93098 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0366665 * safezoneH;
				text = "icons\health.paa";//vie
			};
			class RscPicture_1201: RscPicture
			{
				idc = -1;
				x = 0.861247 * safezoneW + safezoneX;
				y = 0.93098 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0366665 * safezoneH;
				text = "icons\money.paa";//Argent
			};

			class RscPicture_1202: RscPicture
			{
				idc = -1;
				x = 0.911247 * safezoneW + safezoneX;
				y = 0.93098 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0366665 * safezoneH;
				text = "icons\Water.paa";//Eau
			};

			class RscPicture_1203: RscPicture
			{
				idc = -1;
				x = 0.961247 * safezoneW + safezoneX;
				y = 0.93098 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0366665 * safezoneH;
				text = "icons\food.paa";//Bouffe
			};

		};

		class Controls
		{
			class RscText_1000: RscText
			{
				colorBackground[] = {0,0,0,0};
				colorText[] = {0,1,0,1};
				idc = 9996;
				text = "100"; //VIE;
				x = 0.813088 * safezoneW + safezoneX;
				y = 0.96728 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0175001 * safezoneH;
				style = 2;
			};

			class RscText_1001: RscText
			{
				colorBackground[] = {0,0,0,0};
				colorText[] = {0,1,0,1};
				idc = 9997;
				text = "100"; //Argent;
				x = 0.861247 * safezoneW + safezoneX;
				y = 0.9675 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0175001 * safezoneH;
				style = 2;
			};

			class RscText_1002: RscText
			{
				colorBackground[] = {0,0,0,0};
				colorText[] = {0,1,0,1};
				idc = 9998;
				text = "100"; //Eau;
				x = 0.911247 * safezoneW + safezoneX;
				y = 0.9675 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0175001 * safezoneH;
				style = 2;
			};

			class RscText_1003: RscText
			{
				colorBackground[] = {0,0,0,0};
				colorText[] = {0,1,0,1};
				idc = 9999;
				text = "100"; //Bouffe;
				x = 0.961247 * safezoneW + safezoneX;
				y = 0.9675 * safezoneH + safezoneY;
				w = 0.033125 * safezoneW;
				h = 0.0175001 * safezoneH;
				style = 2;
			};
		};
 	};


};