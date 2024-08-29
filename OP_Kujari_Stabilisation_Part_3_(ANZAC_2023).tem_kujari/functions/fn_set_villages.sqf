private ["_unit"];
_unit = param[0];


_villageList = ["Afofo", "Afofo Bangoua", "Afofo Gangna", "Afofo Kiska", "Ari Boudoumiri", "Ariboudoumari", "Balama Kurdi", "Barawas", "Biri Boula", "Biri Noula", "Bora", "Bramataro", "Chouwari", "Chunguliski", "Damaram", "Danashiwa", "Douro", "Gadjadji Lawan", "Dajaji Mastafa", "Gano", "Geydam-Tchoukou", "Gonidi", "Gororop", "Gouara", "Isufuri", "Izala", "Kabaridi", "Kaoya", "Karaye", "Kawiya Boukar Souri", "Kawiya Gambori", "Kawiya Lawan Bachir", "Kawiya Lawan Boukar", "Kawiya Mainari", "Kawiya Maloumdi", "Kawiya Moustapha", "Kouble Maimatara", "Kumbotso", "Kura", "Kyari Kinnai", "Lawan Aridi", "Madairi", "Maiwa", "Malari", "Mallumti Burin", "Mandalari", "Marwey", "Masakali", "Mawa", "Mianmi", "Mimi", "Mourimadi", "Ndilgori", "Rara", "Salmari", "Samari", "Tsakuwa", "Turawa", "Walada", "Wondori", "Yusufari"];

_liveVillage = "";
_birthVillage = "";

_birthVillage = _villageList select floor random count _villageList;
_unit setVariable ["birthVillage", _birthVillage, true];

_sameVillageChance = random 10;
if (_sameVillageChance > 8) then {
      _liveVillage = _villageList select floor random count _villageList;
} else {
      _liveVillage = _birthVillage;
};
_unit setVariable ["liveVillage", _liveVillage, true];
