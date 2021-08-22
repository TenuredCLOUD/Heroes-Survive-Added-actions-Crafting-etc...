//Canteen fill by: TenuredCLOUD v0.2

player removeAction playersplitbiffoodrationaddaction;
sleep 0.1;

playersplitbiffoodrationaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Split Big food ration</t>",{

[] spawn {
player setVariable ["BMRsplitActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_eat_bmr" in _Check_items) then {
hint "You take the other food rations out of the box...";
sleep 5;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You split your big food ration into 4ths";
_type = selectrandom ["herl_eat_smr","herl_eat_smr"];
player removeitem "herl_eat_bmr";
sleep 0.1;
player additem _type;
player additem _type;
player additem _type;
player additem _type;
sleep 2;
player setVariable ["BMRsplitActivated",0,true];
} else {
  playsound "additemok";
  hint "You split your big food ration into 4ths";
  _type = selectrandom ["herl_eat_smr","herl_eat_smr"];
  player removeitem "herl_eat_bmr";
  sleep 0.1;
  player additem _type;
  player additem _type;
  player additem _type;
  player additem _type;
  sleep 2;
  player setVariable ["BMRsplitActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have a BMR...";
  sleep 2;
  player setVariable ["BMRsplitActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_eat_bmr' in items player) && (player getVariable ['BMRsplitActivated',0]) isEqualTo 0"];
