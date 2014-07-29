waitUntil {!isnil {get}};
_Loadout = call compile(get select 10);
if (!isnil {get select 0}) exitWith {};

player addHeadgear (_Loadout select 0);
player addVest (_Loadout select 1);
player addUniform (_Loadout select 2);
player addBackpack (_Loadout select 3);

player addWeapon (_Loadout select 4);
player addWeapon (_Loadout select 5);
player addWeapon (_Loadout select 6);

_PrimWeapItem = call compile format ['[%1]', (_Loadout select 7)];
{player addPrimaryWeaponItem _x} forEach _PrimWeapItem;

for "_i" from 7 to (count _Loadout) do {player additem (_Loadout select _i)};



