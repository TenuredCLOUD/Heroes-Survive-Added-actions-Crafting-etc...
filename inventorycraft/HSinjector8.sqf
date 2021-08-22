//Injector fill by: TenuredCLOUD v0.2

player removeAction playerinjectorpod8addaction;
sleep 0.1;

playerinjectorpod8addaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Put vitamin '8' into injector</t>",{

[] spawn {
player setVariable ["injector8Activated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_injector" in _Check_items && "herl_mb_vitamin8" in _Check_items) then {
hint "You insert the capsule into the injector...";
sleep 2;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "Injector is ready to use";
_type = selectrandom ["herl_u_injectorv8","herl_u_injectorv8"];
player removeitem "herl_ma_injector";
player removeitem "herl_mb_vitamin8";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["injector8Activated",0,true];
} else {
  playsound "additemok";
  hint "Injector is ready to use";
  _type = selectrandom ["herl_u_injectorv8","herl_u_injectorv8"];
  player removeitem "herl_ma_injector";
  player removeitem "herl_mb_vitamin8";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["injector8Activated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have any vitamin '8' capsules...";
  sleep 2;
  player setVariable ["injector8Activated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_ma_injector' in items player) && (player getVariable ['injector8Activated',0]) isEqualTo 0"];
