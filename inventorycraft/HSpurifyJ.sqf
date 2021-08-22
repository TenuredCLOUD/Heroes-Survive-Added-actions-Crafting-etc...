//purify Jerrycan by: TenuredCLOUD v0.2

player removeAction playerPJaddaction;
sleep 0.1;

playerPJaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Purify JerryCan</t>",{

[] spawn {
player setVariable ["PurifyJActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_mb_waterpur" in _Check_items && "herl_ma_cawaterd" in _Check_items) then {
hint "You open the Purification tabs, and pour them into the water...";
sleep 5;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You purified some water!";
_type = selectrandom ["herl_u_cawater","herl_u_cawater"];
player removeitem "herl_mb_waterpur";
player removeitem "herl_ma_cawaterd";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["PurifyJActivated",0,true];
} else {
  playsound "additemok";
  hint "You purified some water!";
  _type = selectrandom ["herl_u_cawater","herl_u_cawater"];
  player removeitem "herl_mb_waterpur";
  player removeitem "herl_ma_cawaterd";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["PurifyJActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You need a JerryCan full of 'dirty' water to purify it...";
  sleep 2;
  player setVariable ["PurifyJActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_mb_waterpur' in items player) && (player getVariable ['PurifyJActivated',0]) isEqualTo 0"];
