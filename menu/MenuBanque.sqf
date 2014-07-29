createDialog "BankMenu";
ctrlSetText[11115,format["Argent en banque : %1",(player getVariable "MonArgent")]];
ctrlSetText[11116,format["Argent en poche : %1",(player getVariable "ArgentPoche")]];
ctrlSetText[11124,format["Argent sur le livret A : %1",(profileNamespace getVariable "Revenu"+cle)]];