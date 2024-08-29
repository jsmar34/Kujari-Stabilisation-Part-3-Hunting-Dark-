_unit = _this select 0;

//CONTRABAND ACTION
[
      _unit,
      [
            "Do you have any contraband?",
            {
                  params["_unit"];
                  // hint "Contraband Action";
                  _susLevel = _unit getVariable "suspicion";
                  _dialogString = "";
                  switch (_susLevel) do {
                        case 0: {
                              _dialogs = ["No.", "No, I have no contraband.", "No, sir.", "I have no contraband."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 1: {
                              _dialogs = ["Why would I tell you?", "It's none of your business.", "Leave me alone!", "I'm not telling you anything."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 2: {
                              _dialogs = ["There shouldn't be anything in there...", "No... Nothing", "There's nothing in the car, don't even look.", "..."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 3: {
                              _dialogs = ["Fuck you, you don't belong here!", "Go home or you'll regret it!", "Let me go, or else!", "The KNFA will make you pay!"];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        default {
                              _dialogString = "...";
                        };
                  };
                  // hint str _dialogString;
                  _unit globalChat _dialogString;
            },          //script
            [_unit],	// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea person_search_trigger || _target inArea vehicle_search_trigger", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];



//GOING TO ACTION
[
      _unit,
      [
            "Where are you going to?",
            {
                  params["_unit"];

                  _susLevel = _unit getVariable "suspicion";
                  _dialogString = "";
                  switch (_susLevel) do {
                        case 0: {
                              _dialogs = ["I'm returning to my home village.", "I'm just going back to my home.", "I'm going to see family."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 1: {
                              _dialogs = ["Why would I tell you?", "It's none of your business.", "Leave me alone!", "I'm not telling you anything."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 2: {
                              _dialogs = ["I don't remember.", "Just somewhere over there.", "I don't know.", "You know the place near the city , uh..."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 3: {
                              _dialogs = ["Fuck you, you don't belong here!", "Go home or you'll regret it!", "Let me go, or else!", "The KNFA will make you pay!"];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        default {
                              _dialogString = "...";
                        };
                  };
                  // hint str _dialogString;
                  _unit globalChat _dialogString;
            },          //script
            [_unit],	// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea person_search_trigger || _target inArea vehicle_search_trigger", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];

// COMING FROM ACTION
[
      _unit,
      [
            "Where are you coming from?",
            {
                  params["_unit"];

                  _susLevel = _unit getVariable "suspicion";
                  _dialogString = "";
                  switch (_susLevel) do {
                        case 0: {
                              _dialogs = ["I was selling crops across the border.", "I was just visiting some friends and family.", "I was working.", "Just running some errands."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 1: {
                              _dialogs = ["Why would I tell you?", "It's none of your business.", "Leave me alone!", "I'm not telling you anything."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 2: {
                              _dialogs = ["Just over there.", "Don't worry about it.", "I don't remember.", "Um.."];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        case 3: {
                              _dialogs = ["Fuck you, you don't belong here!", "Go home or you'll regret it!", "Let me go, or else!", "The KNFA will make you pay!"];
                              _dialogString = _dialogs call bis_fnc_selectRandom;
                        };
                        default {
                              _dialogString = "...";
                        };
                  };
                  // hint str _dialogString;
                  _unit globalChat _dialogString;
            },          //script
            [_unit],	// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea person_search_trigger || _target inArea vehicle_search_trigger", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];


//**Person Search Area**\\
//return to your vehicle
[
      _unit,
      [
            "Return to Your Vehicle",
            {
                  params["_unit"];
                  hint "Return to Vehicle";
                  _group = group _unit;
                  _vehicleWP = _group addWaypoint [position assignedVehicle _unit, 0];
                  _vehicleWP setWaypointType "GETIN";
            },          //script
            [_group],		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea person_search_trigger || _target inArea vehicle_search_trigger", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];

//move to person search area
[
      _unit,
      [
            "Move to Person Search Area",
            {
                  params ["_unit"];
                  _group = group _unit;
                  _searchWP = _group addWaypoint [getMarkerPos "CP_09", 0];
                  _searchWP setWaypointType "MOVE";
            },          //script
            [_unit],	// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea vehicle_search_trigger", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];
