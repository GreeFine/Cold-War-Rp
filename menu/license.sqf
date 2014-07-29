createDialog "MenuPermis";
if (LicenseV >= 1) then {
permisVoiture = "Oui";
} else {
permisVoiture = "Non";
};

if (LicenseC >= 1) then {
permisPoidLourd = "Oui";
} else {
permisPoidLourd = "Non";
};

if (LicenseB >= 1) then {
permisPilote = "Oui";
} else {
permisPilote = "Non";
};

if (LicenseA >= 1) then {
permisBateau = "Oui";
} else {
permisBateau = "Non";
};

if (LicenseAr >= 1) then {
permisArme = "Oui";
} else {
permisArme = "Non";
};

if (FormationF >= 1) then {
FormationFer = "Oui";
} else {
FormationFer = "Non";
};

if (FormationP >= 1) then {
FormationPetrole = "Oui";
} else {
FormationPetrole = "Non";
};
ctrlSetText[11157,format["%1",(permisVoiture)]];
ctrlSetText[11165,format["%1",(permisPoidLourd)]];
ctrlSetText[11159,format["%1",(permisPilote)]];
ctrlSetText[11160,format["%1",(permisBateau)]];
ctrlSetText[11164,format["%1",(permisArme)]];
ctrlSetText[11174,format["%1",(FormationFer)]];
ctrlSetText[11176,format["%1",(FormationPetrole)]];