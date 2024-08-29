_vehicle = _this select 0;
_group = _this select 1;

//-----ENTRANCE TRIGGERS-----\\
//**NORTH Entrance**\\
//addaction to move straight to the search areea for the north entrance trigger
[
      _vehicle,
      [
            "Move To the Search Area",
            {
                  params ["_group"];
                  _group = group _group;
                  _searchWP1 = _group addWaypoint [getMarkerPos "CP_06", 0];
                  _searchWP2 = _group addWaypoint [getMarkerPos "CP_05", 0];
                  _searchWP3 = _group addWaypoint [getMarkerPos "CP_04", 0];
                  _searchWP1 setWaypointSpeed "LIMITED";
                  _searchWP1 setWaypointType "MOVE";
            },          //script
            [_group],		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea north_entrance_trigger && count crew _target != 0", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];

//addaction to move straight through checkpoint for the north entrance trigger
[
      _vehicle,
      [
            "Move Straight Through",
            {
                  params ["_group"];
                  _group = group _group;
                  _exitWP1 = _group addWaypoint [getMarkerPos "CP_01", 0];
                  _exitWP2 = _group addWaypoint [getMarkerPos "exit_WP_01", 0];
                  _exitWP1 setWaypointSpeed "LIMITED";
                  _exitWP1 setWaypointType "MOVE";
                  _exitWP2 setWaypointSpeed "FULL";
                  _exitWP2 setWaypointType "MOVE";
            },          //script
            [_group],		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea north_entrance_trigger && count crew _target != 0", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];


//**SOUTH Entrance**\\
//addaction to move straight through checkpoint for the south entrance trigger
[
      _vehicle,
      [
            "Move Straight Through",
            {
                  params ["_group"];
                  _group = group _group;
                  _exitWP1 = _group addWaypoint [getMarkerPos "CP_07", 0];
                  _exitWP2 = _group addWaypoint [getMarkerPos "exit_WP_02", 0];
                  _exitWP1 setWaypointSpeed "LIMITED";
                  _exitWP1 setWaypointType "MOVE";
                  _exitWP2 setWaypointSpeed "FULL";
                  _exitWP2 setWaypointType "MOVE";
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea south_entrance_trigger && count crew _target != 0", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];

//addaction to move straight to the search areea for the south entrance trigger
[
      _vehicle,
      [
            "Move To the Search Area",
            {
                  // hint "Search Area";
                  params ["_group"];
                  _group = group _group;
                  _searchWP1 = _group addWaypoint [getMarkerPos "CP_02", 0];
                  _searchWP2 = _group addWaypoint [getMarkerPos "CP_03", 0];
                  _searchWP3 = _group addWaypoint [getMarkerPos "CP_04", 0];
                  _searchWP1 setWaypointSpeed "LIMITED";
                  _searchWP1 setWaypointType "MOVE";
            },          //script
            [_group],		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea south_entrance_trigger && count crew _target != 0", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];



//-----SEARCH AREA TRIGGERS-----\\
//**Vehicle Search Area**\\
//exit vehicle
[
      _vehicle,
      [
            "Exit Vehicle",
            {
                  params ["_group", "_vehicle"];
                  _group = group _group;
                  _exitWP = _group addWaypoint [position _vehicle, 0];
                  _exitWP setWaypointType "GETOUT";
            },          //script
            [_group, _vehicle],		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea vehicle_search_trigger && count crew _target != 0", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];



//leave checkpoint
[
      _vehicle,
      [
            "Leave Checkpoint to North",
            {
                  params ["_group"];
                  _group = group _group;
                  _exitWP1 = _group addWaypoint [getMarkerPos "CP_05", 0];
                  _exitWP2 = _group addWaypoint [getMarkerPos "CP_07", 0];
                  _exitWP3 = _group addWaypoint [getMarkerPos "exit_WP_02", 0];
                  _exitWP1 setWaypointSpeed "LIMITED";
                  _exitWP1 setWaypointType "MOVE";
                  _exitWP3 setWaypointSpeed "FULL";
                  _exitWP3 setWaypointType "MOVE";
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea vehicle_search_trigger && count crew _target != 0", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];

//leave checkpoint
[
      _vehicle,
      [
            "Leave Checkpoint to South",
            {
                  params ["_group"];
                  _group = group _group;
                  _exitWP1 = _group addWaypoint [getMarkerPos "CP_03", 0];
                  _exitWP2 = _group addWaypoint [getMarkerPos "CP_01", 0];
                  _exitWP3 = _group addWaypoint [getMarkerPos "exit_WP_01", 0];
                  _exitWP1 setWaypointSpeed "LIMITED";
                  _exitWP1 setWaypointType "MOVE";
                  _exitWP3 setWaypointSpeed "FULL";
                  _exitWP3 setWaypointType "MOVE";
            },          //script
            nil,		// arguments
            1.5,		// priority
            true,		// showWindow
            true,		// hideOnUse
            "",		// shortcut
            "_target inArea vehicle_search_trigger && count crew _target != 0", 	// condition
            10,		// radius
            true 	// unconscious
      ]
] remoteExec ["addAction"];
