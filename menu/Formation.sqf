createDialog "MenuFormation";
if (formationC >= 1) then {
FormationHeroine = "Oui";
} else {
FormationHeroine = "Non";
};
ctrlSetText[11157,format["%1",(FormationHeroine)]];