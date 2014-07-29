#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUT_BUTTON  16

#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_List_N_Box       102

#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c

#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

#define FontEB             "EtelkaMonospaceProBold"
#define FontEM             "EtelkaNarrowMediumPro"
#define FontA             "Purista"
#define FontB             "PuristaBold"
#define FontL             "PuristaLight"
#define FontM             "PuristaMedium"
#define FontSB             "PuristaSemibold"
#define FontZ32             "Zeppelin32"
#define FontZ33             "Zeppelin33"
#define FontZ33I             "Zeppelin33-Italic"

class w_RscText {

	idc = -1;
	type = CT_STATIC;
	style = ST_LEFT;
	colorBackground[] = { 1 , 1 , 1 , 0 };
	colorText[] = { 1 , 1 , 1 , 1 };
	font = "PuristaSemibold";
	sizeEx = 0.025;
	h = 0.25;
	text = "";
};

class BaseRscSingleText
{
	access = 0;
	type =  CT_STATIC ;
	style = ST_LEFT;
	colorText[] = { 0, 0, 0, 1 };
	colorBackground[] = { 1, 1, 1, 0.8 };
	font = FontM;
	sizeEx = 0.023;
	w = 0.3; h = 0.075;
	text = "";
};

class BaseRscMultiText : baseRscSingleText
{
	access = 0;
	style = ST_LEFT + ST_MULTI;
	w = 0.3; h = 0.075;
	text = "Line one\nLine two\nLine three";
	linespacing = 1;
};

class BaseRscPicture : baseRscSingleText
{
	access = 0;
	style = ST_PICTURE;
	w = 0.3; h = 0.075;
	text = "\map_stratis\data\ui_stratis.paa";
};

class BaseRscLine : baseRscSingleText
{
	access = 0;
	style = ST_LINE;
	w = 0; h = 0;
	colorText[] = { 0, 0, 0, 1 };
	text = "";
};

class BaseRscBox : baseRscSingleText
{
	access = 0;
	w = 0; h = 0;
	colorBackground[] = { 1, 1, 1, 0.8 };
	text = "";
};

class BaseRscButton
{
	access = 0;
	type = CT_BUTTON;
	style = ST_LEFT;
	w = 0.3; h = 0.075;
	text = "";
	font = FontM;
	sizeEx = 0.03;
	colorText[] = { 0, 0, 0, 1 };
	colorDisabled[] = { 0, 0, 0, 0.8 };
	colorBackground[] = { 1, 1, 1, 0.8 };
	colorBackgroundDisabled[] = { 0, 0, 0, 0.8 };
	colorBackgroundActive[] = { 0.8, 0.8, 0.8, 0.8 };
	offsetX = 0; offsetY = 0;
	offsetPressedX = 0; offsetPressedY = 0;
	colorFocused[] = { 1, 1, 1, 0.5 };
	colorShadow[] = { 0, 0, 0, 0.4 };
	shadow = 0;
	colorBorder[] = {1, 0, 0, 1};
	borderSize = 0;
	soundEnter[] = {"",0.1,1};
	soundPush[] = {"",0.1,1};
	soundClick[] = {"",0.1,1};
	soundEscape[] = {"",0.1,1};
};

class BaseRscActiveText
{
	access = 0;
	type = CT_ACTIVETEXT;
	style = ST_LEFT;
	font = FontM;
	sizeEx = 0.024;
	color[] = { 0, 0, 0, 0.2 };
	colorActive[] = { 1, 1, 1, 0.2 };
	soundEnter[] = { "", 0, 1 };
	soundPush[] = { "", 0, 1 };
	soundClick[] = { "", 0, 1 };
	soundEscape[] = { "", 0, 1 };
	w = 0.3; h = 0.075;
	action = "";
	text = "";
	url = "";
};

class BaseRscClickPicture : baseRscActiveText
{
	access = 0;
	style = ST_PICTURE;
	w = 0.4; h = 0.035;
	action = "";
	text = "\map_stratis\data\ui_stratis.paa";
	url = "";
};

class BaseRscStructuredText
{
	access = 0;
	type = CT_STRUCTURED_TEXT;
	style = ST_LEFT;
	colorBackground[] = { 1, 1, 1, 0.8 };
	size = 0.018;
	w = 0.3; h = 0.075;
	text = "";
	class Attributes
	{
		font = "TahomaB";
		color = "#000000";
		align = "center";
		valign = "middle";
		shadow = false;
		shadowColor = "#ff0000";
		image = "";
		size = "1";
	};
};

class BaseRscTextBox
{
	access = 0;
	type = CT_EDIT;
	style = ST_LEFT;
	w = 0.3; h = 0.075;
	sizeEx = 0.02;
	font = FontM;
	text = "";
	colorText[] = { 1, 1, 1, 1 };
	colorBackground[] = { 1, 1, 1, 0.8 };
	colorSelection[] = { 1, 1, 1, 0.5 };
	colordisabled[] =  { 1, 1, 1, 0.8 };
	colorborder[] = { 0, 0, 0, 1 };
	border = 1;
	autocomplete = false;
};

class BaseRscSlider
{
	access = 0;
	type = CT_SLIDER;
	style = SL_HORZ;
	onMouseZChanged = "_step = (sliderSpeed (_this select 0)) select 1; _dir = if (_this select 1>0) then {1} else {-1}; (_this select 0) sliderSetPosition (sliderPosition (_this select 0) + _step*_dir)";
	w = 0.3; h = 0.025;
	color[] = { 0, 0, 0, 0.2 };
	coloractive[] = { 1, 1, 1, 0.2 };
};

class BaseRscComboBox
{
	type = CT_COMBO;
	style = CT_BUTTON;
	w = 0.3; h = 0.035;
	colorSelect[] = {0.023529, 0, 0.0313725, 1};
	colorText[] = { 0, 0, 0, 1 };
	colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
	colorSelectBackground[] = { 0.7, 0.4, 0.4, 0.8 };
	colorScrollbar[] = {0.5, 0.5, 0.5, 1};
	arrowFull = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowfull_ca.paa";
	arrowEmpty = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowempty_ca.paa";
	wholeHeight = 0.225;
	color[] = {0, 0, 0, 0.6};
	colorActive[] = {0, 0, 0, 1};
	colorDisabled[] = {0, 0, 0, 0.3};
	font = FontM;
	sizeEx = 0.03;
	soundSelect[] = {"\a3\ui_f\data\Sound\NEW1", 0.09, 1};
	soundExpand[] = {"\a3\ui_f\data\Sound\NEW1", 0.09, 1};
	soundCollapse[] = {"\a3\ui_f\data\Sound\NEW1", 0.09, 1};
	maxHistoryDelay = 1.0;

	class ScrollBar
	{
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\a3\ui_f\data\gui\cfg\Scrollbar\Scrollbar_thumb_ca.paa";
		arrowFull = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowfull_ca.paa";
		arrowEmpty = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowempty_ca.paa";
		border = "\a3\ui_f\data\gui\cfg\Scrollbar\border_ca.paa";
	};
};

class BaseRscListBox
{
	type = CT_LISTBOX;
	style = ST_SINGLE + LB_TEXTURES;
	font = FontM;
	sizeEx = 0.04;
        	rowHeight = 0.03;
	color[] = {1, 1, 1, 1};
	colorText[] = { 0, 0, 0, 1 };
	colorScrollbar[] = {0.5, 0.5, 0.5, 1};
	colorSelect[] = {0.95, 0.95, 0.95, 1};
	colorSelect2[] = {0.95, 0.95, 0.95, 1};
	colorSelectBackground[] = { 0.7, 0.4, 0.4, 0.8 };
	colorSelectBackground2[] = { 0.7, 0.4, 0.4, 0.8 };
	columns[] = {0.3,0.6,0.7 };
	period = 0;
	colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
	maxHistoryDelay = 1.0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	soundSelect[] = {"\a3\ui_f\data\Sound\NEW1", 0.09, 1};

	class ScrollBar
	{
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\a3\ui_f\data\gui\cfg\Scrollbar\Scrollbar_thumb_ca.paa";
		arrowFull = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowfull_ca.paa";
		arrowEmpty = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowempty_ca.paa";
		border = "\a3\ui_f\data\gui\cfg\Scrollbar\border_ca.paa";
	};
};

class BaseRscListNBox : baseRscListBox
{
	access = 0;
	type = CT_LIST_N_BOX;
	style = SL_VERT + LB_TEXTURES;
	w = 0.3; h = 0.35;
	font = "FontM";
	sizeEx = 0.04;
	soundSelect[] = {"",0.1,1 };
	period = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	idcLeft = -1;
	idcRight = -1;
	drawSideArrows = 0;
	text = "";

	class ScrollBar
	{
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\a3\ui_f\data\gui\cfg\Scrollbar\Scrollbar_thumb_ca.paa";
		arrowFull = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowfull_ca.paa";
		arrowEmpty = "\a3\ui_f\data\gui\cfg\Scrollbar\arrowempty_ca.paa";
		border = "\a3\ui_f\data\gui\cfg\Scrollbar\border_ca.paa";
	};
};

class BaseRscToolbox
{
	access = 0;
	type = CT_TOOLBOX;
	style = ST_LEFT;
	colorText[] = { 0, 0, 0, 1 };
	color[] = { 0, 0, 0, 0.2 };
	colorTextSelect[] = { 0, 0, 0.2, 1 };
	colorSelect[] = { 0.9, 0.9, 0.9, 0.7 };
	colorTextDisable[] = { 0, 0, 0, 0.7 };
	colorDisable[] = { 0.5, 0.5, 0.5, 0.5 };
	font = "FontM";
	sizeEx = 0.02;
	rows = 3;
	columns = 2;
	strings[] = {"Entry 1","Entry 2","Entry 3"};
	values[] = {1,1,0,1,0,0};
	w = 0.3; h = 0.075;
};

class BaseRscCheckBox
{
	access = 0;
	type = CT_CHECKBOXES;
	style = ST_LEFT;
	colorText[] = { 0, 0, 0, 1 };
	colorTextSelect[] = { 0, 0, 0.2, 1 };
	color[] = { 0, 0, 0, 0.2 };
	colorSelect[] = { 0.9, 0.9, 0.9, 0.7 };
	colorDisable[] = { 0.5, 0.5, 0.5, 0.5 };
	colorBackground[] = { 1, 1, 1, 0.8 };
	colorTextDisable[] = { 0, 0, 0, 0.7 };
	font = "FontM";
	sizeEx = 0.03;
	rows = 2;
	columns = 3;
	strings[] = {"Entry 0","Entry 1"};
	w = 0.3; h = 0.075;
};

class BaseRscHTML
{
	access = 0;
	type = CT_HTML;
	style = ST_LEFT;
	colorBackground[] = { 1, 1, 1, 0.8 };
	colorBold[] = {1, 0, 0, 1};
	colorLink[] = {0, 0, 1, 1};
	colorLinkActive[] = {1, 0, 0, 1};
	colorPicture[] = {1, 1, 1, 1};
	colorPictureBorder[] = {1, 0, 0, 1};
	colorPictureLink[] = {0, 0, 1, 1};
	colorPictureSelected[] = {0, 1, 0, 1};
	colorText[] = {0, 0, 0, 1};
	w = 0.5; h = 0.5;
	filename = "test.html";
	text="";

  	prevPage = "\a3\ui_f\data\gui\RscCommon\RscHTML\arrow_left_ca.paa";
  	nextPage = "\a3\ui_f\data\gui\RscCommon\RscHTML\arrow_right_ca.paa";

	class H1
	{
		font = "FontM";
		fontBold = "FontM";
		sizeEx = 0.03;
	};
	class P1
	{
		font = "FontM";
		fontBold = "FontM";
		sizeEx = 0.02;
	};
};