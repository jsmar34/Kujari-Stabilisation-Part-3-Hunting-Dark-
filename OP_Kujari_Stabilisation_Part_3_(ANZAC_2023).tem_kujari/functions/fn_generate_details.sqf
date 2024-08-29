_unit = _this select 0;

_susLevel = floor random [0, 1, 4];
_unit setVariable ["suspicion", _susLevel, true];
_chance = 0;
_fakeCard = false;


if (_susLevel <= 1) then {
      _chance = floor random [0, 2, 10];
} else {
      _chance = floor random [0, 7, 10];
};

if (_chance < 5) then {
      _fakeCard = false;
} else {
      _fakeCard = true;
};

_unit setVariable ["fakeCard", _fakeCard, true];

[_unit] call HDL_fnc_set_licence_number;
[_unit] call HDL_fnc_set_birthdate;
[_unit] call HDL_fnc_set_registration_date;
[_unit] call HDL_fnc_set_villages;
[_unit] call HDL_fnc_add_default_actions;
[_unit] call HDL_fnc_add_checkpoint_dialog;
if(leader group _unit == _unit) then {
      [assignedVehicle _unit, group _unit] call HDL_fnc_add_checkpoint_actions;
}
