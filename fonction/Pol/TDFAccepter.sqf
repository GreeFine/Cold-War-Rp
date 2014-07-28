exe = execVM "TDFClient.sqf";
TDFSucces = false;
waitUntil {TDFSucces or (!alive player)};
if (!alive player) exitWith {
TDFF = true;publicVariableServer "TDFF";
terminate exe;
};
{
titleText ["*** !!! Le Convoyeur de Fond à Terminé sa tournée !!! ***", "PLAIN"];
} forEach playableUnits;