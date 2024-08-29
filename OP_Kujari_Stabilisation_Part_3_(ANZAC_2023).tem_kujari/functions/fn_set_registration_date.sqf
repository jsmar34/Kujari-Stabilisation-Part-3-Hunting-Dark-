private ["_unit"];
_unit = param[0];


_day = 0;
_year = str floor random[1985, 1996, 2007];
_month = str floor random[1, 6, 12];
if(_month in [1, 3, 5, 7, 8, 10, 12]) then {
      _day = str floor random[1, 15, 31];
} else {
      _day = str floor random[1, 15, 30];
};
_registrationDate = _day + "/" + _month + "/" + _year;

_unit setVariable ["registrationDate", _registrationDate, true];
