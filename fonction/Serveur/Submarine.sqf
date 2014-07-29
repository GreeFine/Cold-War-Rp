sub = "Submarine_01_F" createVehicle position player;
svd = "B_SDV_01_F" createVehicle position player;
player addUniform "U_B_Wetsuit";
player addvest "V_RebreatherB";
sub attachto [svd,[0,0,-3]];
sub setVectorDirAndUp [[-1,-100,0],[0,0,1]];
player moveInDriver svd;