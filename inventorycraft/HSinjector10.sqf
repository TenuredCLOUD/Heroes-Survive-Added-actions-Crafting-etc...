//Injector fill by: TenuredCLOUD v0.2

player removeAction playerinjectorpod10addaction;
sleep 0.1;

playerinjectorpod10addaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Put vitamin '10' into injector</t>",{

[] spawn {
player setVariable ["injector10Activated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_injector" in _Check_items && "herl_mb_vitamin" in _Check_items) then {
hint "You insert the capsule into the injector...";
sleep 2;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "Injector is ready to use";
_type = selectrandom ["herl_u_injectorv","herl_u_injectorv"];
player removeitem "herl_ma_injector";
player removeitem "herl_mb_vitamin";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["injector10Activated",0,true];
} else {
  playsound "additemok";
  hint "Injector is ready to use";
  _type = selectrandom ["herl_u_injectorv","herl_u_injectorv"];
  player removeitem "herl_ma_injector";
  player removeitem "herl_mb_vitamin";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["injector10Activated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have any vitamin '10' capsules...";
  sleep 2;
  player setVariable ["injector10Activated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_ma_injector' in items player) && (player getVariable ['injector10Activated',0]) isEqualTo 0"];
