"B_Soldier_VR_F" createUnit [position player,group player];
Vr = (nearestObjects [player,["B_Soldier_VR_F"],10]) select 0;
player remoteControl vehicle Vr;
vehicle Vr switchCamera "internal";
VrStop = false;
waitUntil {VrStop};
objNull remoteControl cursorTarget;
player switchCamera "internal";
Vr setDamage 1;
