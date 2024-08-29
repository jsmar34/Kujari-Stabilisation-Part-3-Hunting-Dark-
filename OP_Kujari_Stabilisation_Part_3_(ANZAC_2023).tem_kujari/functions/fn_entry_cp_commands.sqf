if(isServer) then {
      if (_this select 1 == 0) then {
            {
                  if(!isPlayer _x) then {
                        // hint name _x;
                        _moveThroughAction = _x addAction ["Move Straight Through", "hint 'Move Straight Through'"];
                        _x setVariable ["moveThrough", _moveThroughAction];
                        hint str _moveThroughAction;

                        _moveSearchAction = _x addAction ["Move to the Search Area", "hint 'Move Search Area'"];
                        _x setVariable ["moveSearch", _moveSearchAction];
                        hint str _moveSearchAction;
                  };

            } ForEach _this select 0;
      };
};
