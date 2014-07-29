_vehicle = _this select 0;


_lightRed = [29, 1.5, 1.5];
_lightBlue = [1.5, 1.5, 29];

	lightleft = "#lightpoint" createVehicle getpos _vehicle;
	lightleft setLightColor _lightRed;
	lightleft setLightBrightness 0.2;
	lightleft setLightAmbient _lightRed;
	lightleft lightAttachObject [_vehicle, [-3, 0.8, 6]];
	lightleft setLightAttenuation [4, 1, 0, 0.6];

	lightright = "#lightpoint" createVehicle getpos _vehicle;
	lightright setLightColor _lightBlue;
	lightright setLightBrightness 0.2;
	lightright setLightAmbient _lightBlue;
	lightright lightAttachObject [_vehicle, [3, 0.8, 4.6]];
	lightright setLightAttenuation [6, 1, 0, 12.6];

	_leftRed = true;
	while{((vehicle player) getVariable "Siren") == 1} do
	{
	  if(_leftRed) then
	 {
		_leftRed = false;
		lightleft setLightColor _lightRed;
		lightleft setLightAmbient _lightRed;
		lightright setLightColor _lightBlue;
		lightright setLightAmbient _lightBlue;
	 }
	 else
	 {
		_leftRed = true;
		lightleft setLightColor _lightBlue;
		lightleft setLightAmbient _lightBlue;
		lightright setLightColor _lightRed;
		lightright setLightAmbient _lightRed;
	 };
	  sleep 0.5;
	};

waituntil {((vehicle player) getVariable "Siren") == 0};
deletevehicle lightleft;
deletevehicle lightright;
