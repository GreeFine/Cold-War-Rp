createDialog "MenuHelico";
ctrlSetText[77741,format["Nom du garage : %1",(player getVariable "MonHeliport")]];
ctrlSetText[77742,format["Taille du garage : %1",(player getVariable "TailleHeliport")]];
if (!isnil{player getVariable "HelicoSauvegarde1"}) then {lbAdd [77743,format["%1",(player getVariable "HelicoSauvegarde1") select 0]];} else {lbAdd [77743,"Vide"]};
if (!isnil{player getVariable "HelicoSauvegarde2"}) then {lbAdd [77743,format["%1",(player getVariable "HelicoSauvegarde2") select 0]];} else {lbAdd [77743,"Vide"]};
if (!isnil{player getVariable "HelicoSauvegarde3"}) then {lbAdd [77743,format["%1",(player getVariable "HelicoSauvegarde3") select 0]];} else {lbAdd [77743,"Vide"]};