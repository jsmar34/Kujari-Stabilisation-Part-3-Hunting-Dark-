player setVariable ["soundSource", objNull];

_frequency = 0;

["swUIChange", "OnFrequencyChangedFromUI", {
  _frequency = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency;
  [_frequency, _chatterPlaying] call HDL_fnc_play_radio_chatter;
}, player] call TFAR_fnc_addEventHandler;


["swChange", "OnSWchannelSet", {
  _frequency = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency;
  [_frequency, _chatterPlaying] call HDL_fnc_play_radio_chatter;
}, player] call TFAR_fnc_addEventHandler;



["lrUIChange", "OnFrequencyChangedFromUI", {
  _frequency = (call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrFrequency;
  [_frequency, _chatterPlaying] call HDL_fnc_play_radio_chatter;
}, player] call TFAR_fnc_addEventHandler;


["lrChange", "OnLRchannelSet", {
  _frequency = (call TFAR_fnc_ActiveLrRadio) call TFAR_fnc_getLrFrequency;
  [_frequency, _chatterPlaying] call HDL_fnc_play_radio_chatter;
}, player] call TFAR_fnc_addEventHandler;
