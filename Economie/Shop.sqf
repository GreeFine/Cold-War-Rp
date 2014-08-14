//player sidechat "Initialization shop";
_ArgentPoche = (player getVariable "ArgentPoche");
ItemType = _this select 3 select 0;
/* Multi Menu Option
_Type = _Argument select 0;
_Menu = _Argument select 1;
*/
item = nil;prix = nil;Menu = nil;Marker = nil;
//player sidechat format ["ItemType= %1",Itemtype];

switch (side player) do {
    case civilian: {

		    	switch (ItemType) do {
			case "Vehicule Place Kavala": {item = ShopVoituresC;prix = ShopVoituresCPrix;Menu = ShopVoituresCMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresCPoids};
			case "Vehicule VIP Place Kavala": {item = ShopVoituresV;prix = ShopVoituresVPrix;Menu = ShopVoituresVMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresVPoids};
			case "Vehicule": {item = ShopVoituresC;prix = ShopVoituresCPrix;Menu = ShopVoituresCMenu;Marker = "ShopVoitureC";poids = VoituresCPoids};
			case "VehiculeV": {item = ShopVoituresV;prix = ShopVoituresVPrix;Menu = ShopVoituresVMenu;Marker = "ShopVoitureV";poids = VoituresVPoids};
			case "Camion": {item = ShopCamionsC;prix = ShopCamionsCPrix;Menu = ShopCamionsCMenu;Marker = "ShopCamionC";poids = CamionsCPoids};
			case "Helico": {item = ShopHelicoC;prix = ShopHelicoCPrix;Menu = ShopHelicoCMenu;Marker = "ShopHelicoC";poids = HelicoCPoids};
			case "HelicoV": {item = ShopHelicoV;prix = ShopHelicoVPrix;Menu = ShopHelicoVMenu;Marker = "ShopHelicoV";poids = HelicoVPoids};
		    case "ArmesL": {item = ShopArmesC; prix = ShopArmesCPrix; Menu = ShopArmesCMenu};
		    case "ArmesI": {item = ShopArmesC; prix = ShopArmesCPrix; Menu = ShopArmesCMenu};
		    case "ArmesV": {item = ShopArmesV; prix = ShopArmesVPrix; Menu = ShopArmesVMenu};
		    case "MunitionsL": {item = ShopMunitionsC; prix = ShopMunitionsCPrix; Menu = ShopMunitionsCMenu};
		    case "MunitionsI": {item = ShopMunitionsC; prix = ShopMunitionsCPrix; Menu = ShopMunitionsCMenu};
		    case "Items": {item = nil;prix = nil;Menu = nil};
		    case "Sac": {item = nil;prix = nil;Menu = nil};
		    case "Unifrom" : {item = ShopVetementsC;prix = ShopVetementsCPrix;Menu = ShopVetementsCMenu};
		    case "UnifromV" : {item = ShopVetementsV;prix = ShopVetementsVPrix;Menu = ShopVetementsVMenu};
		    case "Bateau" : {item = ShopBateauxC;prix = ShopBateauxCPrix;Menu = ShopBateauxCMenu;Marker = "ShopBateauC";poids = BateauxCPoids};
		    case "Vest" : {item = ShopGiletsC;prix = ShopGiletsCPrix;Menu = ShopGiletsCMenu};
		    case "AttachmentL" : {item = ShopAttachmentC;prix = ShopAttachmentCPrix;Menu = ShopAttachmentCMenu};
		    case "AttachmentI" : {item = ShopAttachmentC;prix = ShopAttachmentCPrix;Menu = ShopAttachmentCMenu};
		};
	};


	    case west: {

		    	switch (ItemType) do {
			case "Vehicule Place Kavala" : {item = ShopVoituresB;prix = ShopVoituresBPrix;Menu = ShopVoituresBMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresBPoids};
			case "Vehicule VIP Place Kavala": {item = ShopVoituresV;prix = ShopVoituresVPrix;Menu = ShopVoituresVMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresVPoids};
			case "Vehicule": {item = ShopVoituresB;prix = ShopVoituresBPrix;Menu = ShopVoituresBMenu;Marker = "ShopVoitureB";poids = VoituresBPoids};
			case "Helico": {item = ShopHelicoB;prix = ShopHelicoBPrix;Menu = ShopHelicoBMenu;Marker = "ShopHelicoB";poids = HelicoBPoids};
		    case "Armes": {item = ShopArmesB; prix = ShopArmesBPrix; Menu = ShopArmesBMenu};
		    case "Munitions": {item = ShopMunitionsB; prix = ShopMunitionsBPrix; Menu = ShopMunitionsBMenu};
		    case "Items": {item = nil;prix = nil;Menu = nil};
		    case "Sac": {item = nil;prix = nil;Menu = nil};
		    case "Unifrom" : {item = ShopVetementsB;prix = ShopVetementsBPrix;Menu = ShopVetementsBMenu};
		    case "Bateau" : {item = ShopBateauxB;prix = BateauxBPrix;Menu = ShopBateauxBMenu;Marker = "ShopBateauB";poids = BateauxBPoids};
		    case "Attachment" : {item = ShopAttachmentB;prix = ShopAttachmentBPrix;Menu = ShopAttachmentBMenu};
		};
	 };

	    case independent: {

		    	switch (ItemType) do {
			case "Vehicule Place Kavala" : {item = ShopVoituresI;prix = ShopVoituresIPrix;Menu = ShopVoituresIMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresIPoids};
			case "Vehicule VIP Place Kavala": {item = ShopVoituresV;prix = ShopVoituresVPrix;Menu = ShopVoituresVMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresVPoids};
			case "Vehicule": {item = ShopVoituresI;prix = ShopVoituresIPrix;Menu = ShopVoituresIMenu;Marker = "ShopVoitureI";poids = VoituresIPoids};
			case "Helico": {item = ShopHelicoI;prix = ShopHelicoIPrix;Menu = ShopHelicoIMenu;Marker = "ShopHelicoI";poids = IPoids};
		    case "Armes": {item = ShopArmesI; prix = ShopArmesIPrix; Menu = ShopArmesIMenu};
		    case "Munitions": {item = ShopMunitionsI; prix = ShopMunitionsIPrix; Menu = ShopMunitionsIMenu};
		    case "Items": {item = nil;prix = nil;Menu = nil};
		    case "Sac": {item = nil;prix = nil;Menu = nil};
		    case "Unifrom" : {item = ShopVetementsI;prix = ShopVetementsIPrix;Menu = ShopVetementsIMenu};
		    case "Bateau" : {item = ShopBateauxI;prix = BateauxIPrix;Menu = ShopBateauxIMenu;Marker = "ShopBateauI";poids = BateauxIPoids};
		};
	 };

	    case opfor: {

		    	switch (ItemType) do {
			case "Vehicule Place Kavala" : {item = ShopVoituresO;prix = ShopVoituresOPrix;Menu = ShopVoituresOMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresOPoids};
			case "Vehicule VIP Place Kavala": {item = ShopVoituresV;prix = ShopVoituresVPrix;Menu = ShopVoituresVMenu;Marker = "SpawnVoitureKavalaPlace";poids = VoituresVPoids};
			case "Vehicule": {item = ShopVoituresO;prix = ShopVoituresOPrix;Menu = ShopVoituresOMenu;Marker = "ShopVoitureO";poids = VoituresOPoids};
			case "Helico": {item = ShopHelicoO;prix = ShopHelicoOPrix;Menu = ShopHelicoOMenu;Marker = "ShopHelicoO";poids = HelicoOPoids};
		    case "Armes": {item = ShopArmesO; prix = ShopArmesOPrix; Menu = ShopArmesOMenu};
		    case "Munitions": {item = ShopMunitionsO; prix = ShopMunitionsOPrix; Menu = ShopMunitionsOMenu};
		    case "Items": {item = nil;prix = nil;Menu = nil};
		    case "Sac": {item = nil;prix = nil;Menu = nil};
		    case "Unifrom" : {item = ShopVetementsO;prix = ShopVetementsOPrix;Menu = ShopVetementsOMenu};
		    case "Bateau" : {item = ShopBateauxO;prix = BateauxOPrix;Menu = ShopBateauxOMenu;Marker = "ShopBateauO";poids = BateauxOPoids};
		    case "projetx": {item = projetx};
		};
	 };
  };
//player sidechat format ["Marker= %1",Marker];

  MenuExit = false;
 	createDialog "Shop";
for "_i" from 0 to (count Menu) do {lbAdd [9750,(Menu select _i)]};
	ctrlSetText[9751,format["Argent en poche : %1",(player getVariable "ArgentPoche")]];
	ctrlSetText[9753,format["Acheter %1",ItemType]];
	ctrlSetText[9752,format["Shop %1",ItemType]];

MenuChoix = false;

waitUntil {MenuChoix or MenuExit or !dialog};
_Selecteur = lbCurSel 9750;

 
while {_Selecteur >= 0 && !MenuChoix} do {

//player sidechat format ["Selection: :%1", _Selecteur]; 

sleep 0.1;

_Selecteur = lbCurSel 9750;

//player sidechat format ["Selection: :%1", _Selecteur];

if (_Selecteur < 0 && MenuChoix) then {hint "Faite un choix";MenuChoix = false};

if (MenuExit or !dialog) exitWith {};
};

 if (_Selecteur >= 0) then {

_prix = prix select _Selecteur;
_item = item select _Selecteur;

 //player sidechat format ["prix: :%1  item: %2", prix select _Selecteur,item select _Selecteur];

if (!isNil {poids}) then {poidsF = poids select _Selecteur};

// _gradeIM = grade select 1; //["Nom",3];
// if (_Selecteur > _gradeIM) exitWith {Hint format ["Tu doit être plus gradé pour avoir accés à ce %2",_item]};

if (_ArgentPoche <= _prix) exitWith {hint "Tu n'as pas assez d'argent"};
	player setVariable ["ArgentPoche", _ArgentPoche - _prix,true];
	    	switch (ItemType) do {
		case "Vehicule Place Kavala": {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
		case "Vehicule VIP Place Kavala": {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
		case "Vehicule": {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
		case "VehiculeV": {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
		case "Camion": {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
		case "Helico" : {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
		case "HelicoV" : {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
		case "Bateau" : {[_item,marker,poidsF] execVM "fonction\Serveur\VehiculeSpawn.sqf"};
	    case "ArmesL": {player addWeapon _item};
	    case "ArmesI": {player addWeapon _item};
	    case "ArmesV": {player addWeapon _item};
	    case "Munitions": {player addMagazine _item};
	    case "Items": {player additem _item};
	    case "Sac": {player addBackpack _item};
		case "UnifromL" : {player addUniform _item};
		case "UnifromI" : {player addUniform _item};
		case "VestL" : {player addVest _item};
		case "VestI" : {player addVest _item};
		case "AttachmentL" : {player additem _item};
		case "AttachmentI" : {player additem _item};
	    default {};
	};
	Hint format ["tu as achete %1",(_item)];
};
	closeDialog 0;