//Milk by: TenuredCLOUD v0.2

player removeAction playermilkaddaction;
sleep 0.1;

playermilkaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Use powdered milk</t>",{

[] spawn {
player setVariable ["milkActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_mb_pm" in _Check_items && "herl_dri_watera" in _Check_items) then {
hint "You open the powdered milk, and pour it into the water...";
sleep 5;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You made some milk!";
_type = selectrandom ["herl_dri_milk","herl_dri_milk"];
player removeitem "herl_mb_pm";
player removeitem "herl_dri_watera";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["milkActivated",0,true];
} else {
  playsound "additemok";
  hint "You made some milk!";
  _type = selectrandom ["herl_dri_milk","herl_dri_milk"];
  player removeitem "herl_mb_pm";
  player removeitem "herl_dri_watera";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["milkActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You need a bottle of water to make milk...";
  sleep 2;
  player setVariable ["milkActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_mb_pm' in items player) && (player getVariable ['milkActivated',0]) isEqualTo 0"];
