//RemoteControl batteries by: TenuredCLOUD v0.2

player removeAction playerremotebatteryaddaction;
sleep 0.1;

playerremotebatteryaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Add battery to Remotecontrol</t>",{

[] spawn {
player setVariable ["RCbatteriesActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_remotec" in _Check_items && "herl_mb_battery" in _Check_items) then {
  hint "You get the two items ready...";
sleep 2;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You add a battery to your RemoteControl";
_type = selectrandom ["herl_u_remotecontrol","herl_u_remotecontrol"];
player removeitem "herl_ma_remotec";
player removeitem "herl_mb_battery";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["RCbatteriesActivated",0,true];
} else {
  playsound "additemok";
  hint "You add a battery to your RemoteControl";
  _type = selectrandom ["herl_u_remotecontrol","herl_u_remotecontrol"];
  player removeitem "herl_ma_remotec";
  player removeitem "herl_mb_battery";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["RCbatteriesActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have any batteries...";
  sleep 2;
  player setVariable ["RCbatteriesActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_ma_remotec' in items player) && (player getVariable ['RCbatteriesActivated',0]) isEqualTo 0"];
