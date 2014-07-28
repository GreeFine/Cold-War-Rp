while {true} do
{
    sleep 1200;
    {
        if(!alive _x) then
        {
            deleteVehicle _x;
        };
    } foreach allMissionObjects "LandVehicle";

    {
        if(!alive _x) then
        {
            deleteVehicle _x;
        };
    } foreach allMissionObjects "Air";
};