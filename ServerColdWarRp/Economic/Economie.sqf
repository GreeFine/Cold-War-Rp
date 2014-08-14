PrixLP = 10;PrixLBo = 45;PrixLPi = 700;PrixLF = 2000;PrixLD = 2500;PrixLPe = 1500;PrixLE = 1750;PrixLB = 40;PrixLT = 450;
PrixIC = 1350;PrixIH = 1350;PrixIT = 650;PrixIR = 1500;
/*publicVariable "PrixLP";publicVariable "PrixLBo";publicVariable "PrixLPi";publicVariable "PrixLF";publicVariable "PrixLD";publicVariable "PrixLPe";publicVariable "PrixLE";publicVariable "PrixLB";publicVariable "PrixLT";*/
/*publicVariable "PrixIC";publicVariable "PrixIH";publicVariable "PrixIT";publicVariable "PrixIR";*/


_RessourceL = [["Pomme",3,3,PrixLP],["Bois",10,5,PrixLBo],["Pierre",15,12,PrixLPi],["Fer",15,12,PrixLF],["Diamant",7,12,PrixLD],["Petrole",5,5,PrixLPe],["Epaves",10,7,PrixLE],["Baracuda",5,3,PrixLB],["Thons",15,10,PrixLT]];

_RessourceI = [["Cannabis",3,3,PrixIC],["Heroine",3,3,PrixIH],["Tortue",3,3,PrixIT],["Roussettes",3,3,PrixIR]];

RessourceArray = _RessourceL+_RessourceI; publicVariable "RessourceArray";


Pomme = 0;Bois = 0;Pierre = 0;Fer = 0;Diamant = 0;Petrole = 0;Epaves = 0;/*Ilégale*/Cannabis = 0;Heroine = 0;/*Terre --> Mer*/
Baracuda = 0;Thons = 0;/*Ilégale*/Tortues = 0;Roussettes = 0;
publicVariable "Pomme";publicVariable "Bois";publicVariable "Pierre";publicVariable "Fer";publicVariable "Diamant";publicVariable "Petrole";publicVariable "Epaves";publicVariable "Cannabis";publicVariable "Heroine";
publicVariable "Baracuda";publicVariable "Thons";publicVariable "Tortues";publicVariable "Roussettes";

while {true} do {
	redist = 0;
if (Pomme > 50) then {PrixLP = PrixLP/((Pomme/2000)+1); redist = redist + Pomme; Pomme=0;publicVariable"Pomme"};
if (Bois > 50) then {PrixLBo = PrixLBo/((Bois/2000)+1); redist = redist+Bois; Bois=0;publicVariable"Bois"};
if (Pierre > 50) then {PrixLPi = PrixLPi/((Pierre/2000)+1); redist = redist+Pierre; Pierre=0;publicVariable"Pierre"};
if (Diamant > 10) then {PrixLD = PrixLD/((Diamant/2000)+1); redist = redist+Diamant; Diamant=0;publicVariable"Diamant"};
if (Fer > 20) then {PrixLF = PrixLF/((Fer/2000)+1); redist = redist+Fer; Fer=0;publicVariable"Fer"};
if (Petrole > 20) then {PrixLPe = PrixLPe/((Petrole/2000)+1); redist = redist+Petrole; Petrole=0;publicVariable"Petrole"};
if (Epaves > 20) then {PrixLE = PrixLE/((Epaves/2000)+1);redist = redist+Epaves; Epaves=0;publicVariable"Epaves"};
if (Cannabis > 20) then {PrixIC = PrixIC/((Cannabis/2000)+1); redist = redist+Cannabis; Cannabis=0;publicVariable"Cannabis"};
if (Heroine > 20) then {PrixIH = PrixIH/((Heroine/2000)+1); redist = redist+Heroine; Heroine=0;publicVariable"Heroine"};
if (Baracuda > 20) then {PrixLB = PrixLB/((Baracuda/2000)+1); redist = redist+Baracuda; Baracuda=0;publicVariable"Baracuda"};
if (Thons > 20) then {PrixLT = PrixLT/((Thons/2000)+1); redist = redist+Thons; Thons=0;publicVariable"Thons"};
if (Tortues > 20) then {PrixIT = PrixIT/((Tortues/2000)+1); redist = redist+Tortues; Tortues=0;publicVariable"Tortues"};
if (Roussettes > 10) then {PrixIR = PrixIR/((Roussettes/2000)+1); redist = redist+Roussettes; Roussettes=0;publicVariable"Roussettes"};
rand = round(random(13));
boucle = 0;
if (redist <= 2000) then {boucle = 1};
if (redist > 2000) Then {boucle = 2;redist = (redist/2)};

	for "_i" from 0 to boucle do {
		switch rand do {
		    case 1: {PrixLP = PrixLP*((redist/2000)+1)};
		    case 2: {PrixLBo = PrixLBo*((redist/2000)+1)};
		    case 3: {PrixLPi = PrixLPi*((redist/2000)+1)};
		    case 4: {PrixLF = PrixLF*((redist/2000)+1)};
		    case 5: {PrixLD = PrixLD*((redist/2000)+1)};
		    case 6: {PrixLPe = PrixLPe*((redist/2000)+1)};
		    case 7: {PrixLE = PrixLE*((redist/2000)+1)};
		    case 8: {PrixIC = PrixIC*((redist/2000)+1)};
		    case 9: {PrixIH = PrixIH*((redist/2000)+1)};
		    case 10: {PrixLB = PrixLB*((redist/2000)+1)};
		    case 11: {PrixLT = PrixLT*((redist/2000)+1)};
		    case 12: {PrixIT = PrixIT*((redist/2000)+1)};
			case 13: {PrixIR = PrixIR*((redist/2000)+1)};
		    default {};
	};
};

	sleep 300;

	_RessourceL = [["Pomme",3,3,PrixLP],["Bois",10,5,PrixLBo],["Pierre",15,12,PrixLPi],["Fer",15,12,PrixLF],["Diamant",7,12,PrixLD],["Petrole",5,5,PrixLPe],["Epaves",10,7,PrixLE],["Baracuda",5,3,PrixLB],["Thons",15,10,PrixLT]];publicVariable "RessourceL";

	_RessourceI = [["Cannabis",3,3,PrixIC],["Heroine",3,3,PrixIH],["Tortue",3,3,PrixIT],["Roussettes",3,3,PrixIR]];publicVariable "RessourceI";

	RessourceArray = _RessourceL+_RessourceI; publicVariable "RessourceArray";
};