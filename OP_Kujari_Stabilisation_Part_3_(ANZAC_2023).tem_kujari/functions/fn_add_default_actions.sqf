private ["_unit"];
_unit = param[0];

// addaction for requesting birth village
[
      _unit,
      [
            "Ask Birth Village", //title
            {
                  _tUnit = param[0];
                 _birthVillage = _tUnit getVariable "birthVillage";
                 _tUnit globalChat _birthVillage;
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "", 	// condition
            3,		// radius
            false 	// unconscious
      ]
] remoteExec ["addAction"];



// addaction for requesting village of residence
[
      _unit,
      [
            "Ask Village of Residence",
            {
                  _tUnit = param[0];
                  _liveVillage = _tUnit getVariable "liveVillage";
                  _tUnit globalChat _liveVillage;
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "", 	// condition
            3,		// radius
            false 	// unconscious
      ]
] remoteExec ["addAction"];


// addaction for requesting birth date
[
      _unit,
      [
            "Ask Birth Date",
            {
                  _tUnit = param[0];
                  _birthDate = _tUnit getVariable "birthDate";
                  _tUnit globalChat _birthDate;
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "", 	// condition
            3,		// radius
            false 	// unconscious
      ]
] remoteExec ["addAction"];


// addaction for requesting name
[
      _unit,
      [
            "Ask Name",
            {
                  _tUnit = param[0];
                  _name = [_tUnit] call BIS_fnc_getName;
                  // systemChat _name;
                  _tUnit globalChat _name;
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "", 	// condition
            3,		// radius
            false 	// unconscious
      ]
] remoteExec ["addAction"];

// addaction for requesting and showing ID card
[
      _unit,
      [
            "View ID Card",
            {
                  _tUnit = param[0];
                 [_tUnit] call HDL_fnc_create_dialog;
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "", 	// condition
            3,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];
