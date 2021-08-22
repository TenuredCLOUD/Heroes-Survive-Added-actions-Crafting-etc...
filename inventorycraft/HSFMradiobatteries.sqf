//FM radio batteries by: TenuredCLOUD v0.2

player removeAction playerFMbatteryaddaction;
sleep 0.1;

playerFMbatteryaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Add battery to FM radio</t>",{

[] spawn {
player setVariable ["FMradiobatteriesActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_fm_radio" in _Check_items && "herl_mb_battery" in _Check_items) then {
  hint "You get the two items ready...";
sleep 2;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You add a battery to your FM Radio";
_type = selectrandom ["herl_u_fm_radio","herl_u_fm_radio"];
player removeitem "herl_ma_fm_radio";
player removeitem "herl_mb_battery";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["FMradiobatteriesActivated",0,true];
} else {
  playsound "additemok";
  hint "You add a battery to your FM Radio";
  _type = selectrandom ["herl_u_fm_radio","herl_u_fm_radio"];
  player removeitem "herl_ma_fm_radio";
  player removeitem "herl_mb_battery";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["FMradiobatteriesActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have any batteries...";
  sleep 2;
  player setVariable ["FMradiobatteriesActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_ma_fm_radio' in items player) && (player getVariable ['FMradiobatteriesActivated',0]) isEqualTo 0"];
