params ["_frequency", "_playing"];

switch (_frequency) do {
      case "30": {
            deleteVehicle (player getVariable "soundSource");
            _offset = random [0, 50, 95];
            player setVariable ["soundSource", ([player, player] say3D ["CMDNET", 100, 1, false, _offset])];
            _sleepTime = (111 - _offset) + (random [10, 20, 70]);
            // []spawn {sleep (111 - _offset)};
      };
      case "41.5": {
            deleteVehicle (player getVariable "soundSource");
            _offset = random [0, 15, 50];
            player setVariable ["soundSource", ([player, player] say3D ["PltNet", 100, 1, false, _offset])];
            _sleepTime = (72 - _offset) + (random [10, 20, 70]);
      };
      default {
            deleteVehicle (player getVariable "soundSource");
      };
};
