//Purify Canteen by: TenuredCLOUD v0.3

player removeAction playerPCaddaction;
sleep 0.1;

playerPCaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Purify canteen</t>",{

[] spawn {
player setVariable ["PurifyCActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_mb_waterpur" in _Check_items && "herl_ma_Canteen" in _Check_items) then {
hint "You open the Purification tabs, and pour them into the water...";
sleep 5;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You purified some water!";
_type = selectrandom ["herl_dri_Canteen","herl_dri_Canteen"];
player removeitem "herl_mb_waterpur";
player removeitem "herl_ma_Canteen";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["PurifyCActivated",0,true];
} else {
  playsound "additemok";
  hint "You purified some water!";
  _type = selectrandom ["herl_dri_Canteen","herl_dri_Canteen"];
  player removeitem "herl_mb_waterpur";
  player removeitem "herl_ma_Canteen";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["PurifyCActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You need a Canteen with 'dirty' water to purify it...";
  sleep 2;
  player setVariable ["PurifyCActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_mb_waterpur' in items player) && (player getVariable ['PurifyCActivated',0]) isEqualTo 0"];
