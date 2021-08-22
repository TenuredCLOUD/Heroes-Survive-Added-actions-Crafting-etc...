//multimeter batteries by: TenuredCLOUD v0.2

player removeAction playerMultiMbatteryaddaction;
sleep 0.1;

playerMultiMbatteryaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Add battery to Multimeter</t>",{

[] spawn {
player setVariable ["MultiMbatteriesActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_multim" in _Check_items && "herl_mb_battery" in _Check_items) then {
  hint "You get the two items ready...";
  sleep 2;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You add a battery to your Multimeter";
_type = selectrandom ["herl_o_multim","herl_o_multim"];
player removeitem "herl_ma_multim";
player removeitem "herl_mb_battery";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["MultiMbatteriesActivated",0,true];
} else {
  playsound "additemok";
  hint "You add a battery to your Multimeter";
  _type = selectrandom ["herl_o_multim","herl_o_multim"];
  player removeitem "herl_ma_multim";
  player removeitem "herl_mb_battery";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["MultiMbatteriesActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have any batteries...";
  sleep 2;
  player setVariable ["MultiMbatteriesActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_ma_multim' in items player) && (player getVariable ['MultiMbatteriesActivated',0]) isEqualTo 0"];
