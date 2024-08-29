//array of vehicles
private _vehicleList = ["CFP_C_AFRISLAMIC_Datsun_Pickup_Old_01", "CFP_C_AFRISLAMIC_Land_Rover_01", "CFP_C_AFRISLAMIC_Skoda_Blue_01", "CFP_C_AFRISLAMIC_Skoda_Green_01", "CFP_C_AFRISLAMIC_Skoda_White_01", "CFP_C_AFRISLAMIC_Ural_Blue_01", "CFP_C_AFRISLAMIC_Zamak_01", "CUP_C_Golf4_black_Civ", "CUP_C_Golf4_blue_Civ", "CUP_C_Golf4_yellow_Civ", "C_Offroad_02_unarmed_F", "C_Offroad_01_F", "C_Offroad_01_covered_F", "CUP_C_Pickup_unarmed_CIV", "CFP_C_CHERNO_WIN_LADA_01", "CFP_C_CHERNO_WIN_LADA_02", "CUP_C_S1203_CIV_CR", "CUP_C_Volha_CR_CIV", "CFP_C_MALDEN_Golf_Random_Color_01", "CUP_C_Octavia_CIV"];

_contrabandListWeapon = ["CUP_arifle_AK74_Early", "CUP_arifle_AKM_Early", "CUP_arifle_AKS74_Early", "CUP_arifle_Gewehr1_railed", "launch_RPG7_F", "CUP_lmg_PKM_top_rail_B50_vfg", "CUP_hgun_CZ75", "CUP_hgun_Makarov", "CUP_smg_UZI"];
_contrabandListItem = ["DemoCharge_F", "IEDUrbanSmall_F", "UMI_Coke_Pile_01", "UMI_Money", "UMI_Cocaine_Brick", "UMI_Weed_Bale"];

_regularItems = ["ACE_fieldDressing", "ACE_Banana", "UMI_Land_Camcorder_F", "UMI_Land_Camera_F", "ACE_Can_Franta", "ACE_Can_RedGull", "ACE_Can_Spirit", "ACE_Canteen", "ACE_Cellphone", "ACE_EntrenchingTool", "ACE_Humanitarian_Ration", "ACE_WaterBottle", "ToolKit", "ACE_Sunflower_Seeds"];


//marker location arrays
_spawnLocations = ["northSpawn_01", "northSpawn_02", "southSpawn_01", "southSpawn_02"];
// _spawnLocations = ["spawnMarker_1", "spawnMarker_1", "spawnMarker", "spawnMarker"];
// private _spawnLocations = ["spawnMarker", "spawnMarker_1"];
private _gateMarkers = ["CP_01", "CP_07"];

//randomly select spawn point
_spawnSelector = floor random 4;
_selectedSpawn = nil;
_selectedGate = nil;

//if spawn is north select north gate, otherwise choose south gate
if (_spawnSelector < 2) then {
      // hint "North";
      // _selectedSpawn = _spawnLocations select _spawnSelector;
      _selectedSpawn = _spawnLocations select _spawnSelector;
      _selectedGate = _gateMarkers select 1;
} else {
      // hint "South";
      _selectedSpawn = _spawnLocations select _spawnSelector;
      _selectedGate = _gateMarkers select 0;
};

//create group for units
_tempGroup = createGroup [Civilian, false];
_tempGroup setFormation "DIAMOND";

//choose number of units to create
_unitNumber = random [1, 2, 4];

//loop through every unit
for "_i" from 1 to _unitNumber do {
      //create individual unit
      _unit = _tempGroup createUnit ["CFP_C_AFRISLAMIC_Civ_5_01", getMarkerPos _selectedSpawn, [], 2, "NONE"];
      _unit setBehaviour "CARELESS";

      //generate and apply suspicion level

      //call functions to generate details
      [_unit] remoteExec ["HDL_fnc_generate_details", 2];
};

_suspicionLevel = floor random [0, 1, 4];;
if(_suspicionLevel == -1) then {
      systemChat "what da heeeellll";
};
// add contraband to vehicles
_hasContraband = false;
_contrabandDecider = 0;

// _contrabandDecider = (_suspicionLevel + 1) * (random[0.12, 1.36, 2.75]);
_contrabandDecider = (_suspicionLevel + 1) * (random[0.12, 1.36, 2.75]);

if (_contrabandDecider > 3.4) then {
      _decide = random [0, 7, 10];
      if (_decide > 6) then {
            _hasContraband = true;
      } else {
            _hasContraband = false;
      };
} else {
      _decide = random [0, 2, 10];
      if (_decide > 6) then {
            _hasContraband = true;
      } else {
            _hasContraband = false;
      };
};

// player globalChat ("Decider: " + (str _contrabandDecider) + ", Level: " + (str (_suspicionLevel + 1)) + ", Has: " +  (str _hasContraband));
// player globalChat str (_suspicionLevel + 1);
// player globalChat str _hasContraband;

//choose vehicle to spawn from array
_vehicleIndex = floor random (count _vehicleList - 1);
//create vehicle on spawn point
_vehicle = _vehicleList select _vehicleIndex createVehicle getMarkerPos _selectedSpawn;

// generate contraband and inventory list
if(_hasContraband) then {
      for "_i" from 1 to (random 7) do {
            _weaponOrItem = floor random 2;
            // player globalChat str _weaponOrItem;
            if(_weaponOrItem == 0) then {
                  _vehicle addWeaponCargo [(selectRandom _contrabandListWeapon), 1];
            } else {
                  _vehicle addItemCargo [(selectRandom _contrabandListItem), 1];
            };
      };
};


for "_i" from 1 to (random 12) do {
      _vehicle addItemCargo [(selectRandom _regularItems), 1];
};

//give group waypoint to enter vehicle
_vehicleWaypoint = _tempGroup addWaypoint[getPos _vehicle, 0];
_vehicleWaypoint waypointAttachVehicle _vehicle;
_vehicleWaypoint setWaypointType "GETIN";

//add default checkpoint actions to vehicle and group
[_vehicle, _tempGroup] remoteExec ["HDL_fnc_add_checkpoint_actions"];

//add waypoint to move towards checkpoint
_gateWaypoint = _tempGroup addWaypoint[getMarkerPos _selectedGate, 0];
_gateWaypoint setWaypointType "MOVE";
