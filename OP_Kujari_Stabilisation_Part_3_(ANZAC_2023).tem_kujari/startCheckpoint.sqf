// systemChat "started";
if(isServer) then {
      for "_i" from 1 to 5 do {
            // systemChat str _i;
            [] remoteExec ["HDL_fnc_create_civilians"];
            call {sleep 60;};
      };


      call {sleep 60;};

      for "_i" from 1 to 6 do {
            // systemChat str _i;
            [] remoteExec ["HDL_fnc_create_civilians"];

            call {sleep 60;};
      };


      call {sleep 60;};

      for "_i" from 1 to 9 do {
            // systemChat str _i;
            [] remoteExec ["HDL_fnc_create_civilians"];

            call {sleep random 60;};
      };
};
