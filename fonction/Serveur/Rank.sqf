waitUntil {!isnil {Ranks}};
_rankS = Ranks;
switch (side player) do {
     case west: {_Rank = [["Test1",10],["Test1",30]] select _rankS};
     case independent: {_Ranks = [["Test1",10],["Test1",30]] select _rankS};
     case opfor: {_Rank = [["Test1",10],["Test1",30]] select _rankS};
     default {_Rank = ["Error",0]};
 };
Ranks = _Rank;