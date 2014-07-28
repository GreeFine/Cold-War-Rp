MenuChoix = false;
while {true} do {
	/*Gear*/
	_Hgear = headgear player;
	_Vgear = Vest player;
	_Ugear = uniform player;
	_Bgear = backpack player;
	_gear = [_Hgear,_Vgear,_Ugear,_Bgear];
	/*Les Armes*/
	_Pweapond = primaryWeapon player;
	_Sweapond = secondaryWeapon player;
	_Hweapondd = handgunWeapon player;
	_Mweapond = primaryWeaponItems player;
	_weapond = [_Pweapond,_Sweapond,_Hweapondd]+_Mweapond;
	/*Les Munitions/Items*/
	_Container = itemsWithMagazines player;

Loadout = _gear+_weapond+_Container;
sleep 30;
};