private ["_unit"];
_unit = param[0];

_licenceString = "";
for "_i" from 0 to 9 do {
      _noOrStr = floor random 10;
      if (_noOrStr > 5) then {
            _letter = floor random [1, 13, 26];
            _letter = [_letter, true] call BIS_fnc_phoneticalWord;
            _licenceString = _licenceString + _letter;
      } else {
            _number = str floor random 9;
            _licenceString = _licenceString + _number;
      };
};
_unit setVariable ["registrationNumber", _licenceString, true];
