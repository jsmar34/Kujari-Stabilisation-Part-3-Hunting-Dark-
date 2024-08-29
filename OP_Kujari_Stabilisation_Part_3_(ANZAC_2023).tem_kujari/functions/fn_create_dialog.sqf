_unit = _this select 0;
// hint name _unit;

_image = "";
_fakeCard = _unit getVariable "fakeCard";
_idNumber = _unit getVariable "registrationNumber";
_registerDate = _unit getVariable "registrationDate";
_birthDate  = _unit getVariable "birthDate";
_birthVillage = _unit getVariable "birthVillage";
_liveVillage  = _unit getVariable "liveVillage";
_name = name _unit;

if (_fakeCard == true) then {
      _image = "images\card_Fake_Template.paa";
} else {
      _image = "images\card_Real_Template.paa";
};

createdialog "dialog_KUJARI_ID_CARD";

ctrlSetText[1200, _image];
ctrlSetText[1003, _idNumber];
ctrlSetText[1002, _registerDate];
ctrlSetText[1001, _birthDate];
ctrlSetText[1005, _birthVillage];
ctrlSetText[1006, _liveVillage];
ctrlSetText[1004, _name];
ctrlSetText[1007, ""];
