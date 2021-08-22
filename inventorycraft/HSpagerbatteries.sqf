//Pager batteries by: TenuredCLOUD v0.2

player removeAction playerpagerbatteryaddaction;
sleep 0.1;

playerpagerbatteryaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Add battery to pager</t>",{

[] spawn {
player setVariable ["PagerbatteriesActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_pager" in _Check_items && "herl_mb_battery" in _Check_items) then {
  hint "You get the two items ready...";
  sleep 2;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You add a battery to your Pager";
_type = selectrandom ["herl_pager","herl_pager"];
player removeitem "herl_ma_pager";
player removeitem "herl_mb_battery";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["PagerbatteriesActivated",0,true];
} else {
  playsound "additemok";
  hint "You add a battery to your Pager";
  _type = selectrandom ["herl_pager","herl_pager"];
  player removeitem "herl_ma_pager";
  player removeitem "herl_mb_battery";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["PagerbatteriesActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have any batteries...";
  sleep 2;
  player setVariable ["PagerbatteriesActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_ma_pager' in items player) && (player getVariable ['PagerbatteriesActivated',0]) isEqualTo 0"];
