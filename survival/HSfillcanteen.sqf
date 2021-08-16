//Canteen fill by: TenuredCLOUD v0.1

player removeAction playercanteenfilladdaction;
sleep 0.1;

playercanteenfilladdaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Fill Canteen from Jerrycan</t>",{

[] spawn {
player getVariable ["canteenfillActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_u_cawater" in _Check_items && "herl_u_Canteen" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You attempt to fill your canteen with water from your JerryCan...";
sleep 25;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You fill your Canteen with the Jerrycan...";
_type = selectrandom ["herl_dri_Canteen","herl_dri_Canteen"];
player removeitem "herl_u_Canteen";
player additem _type;
sleep 5;
player getVariable ["canteenfillActivated",0,true];
} else {
  playsound "additemfailed";
  hint "You Attempted to fill the canteen with water, but spilled the Jerrycan...";
  _typeF = selectrandom ["herl_u_cawatere","herl_u_cawatere"];
  player removeItem "herl_u_cawater";
  sleep 0.1;
  player additem _typeF;
  sleep 5;
  player getVariable ["canteenfillActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have a Canteen that needs to be filled...";
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_u_cawater' in items player) && (player getVariable ['canteenfillActivated',0]) isEqualTo 0"];
