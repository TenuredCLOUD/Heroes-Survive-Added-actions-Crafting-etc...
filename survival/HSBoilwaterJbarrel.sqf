//jerry can boiling by: TenuredCLOUD v0.2

player removeAction playerboilwaterJaddaction;
sleep 0.1;

playerboilwaterJaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Boil water in JerryCan</t>",{

[] spawn {
player setVariable ["boilwaterJActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_cawaterd" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You Start to boil some water...";
sleep 25;
_random = random 1;
if (_random > 0.60) then {
playsound "additemok";
hint "You boiled the water in a Jerrycan, it is now safe to drink.";
_type = selectrandom ["herl_u_cawater","herl_u_cawater"];
player removeItem "herl_ma_cawaterd";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["boilwaterJActivated",0,true];
} else {
  playsound "additemok";
  hint "You boiled the water in a Jerrycan, it is now safe to drink.";
  _type = selectrandom ["herl_u_cawater","herl_u_cawater"];
  player removeItem "herl_ma_cawaterd";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["boilwaterJActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have a JerryCan that needs boiling...";
  sleep 2;
  player setVariable ["boilwaterJActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'MetalBarrel_burning_F') && (player getVariable ['boilwaterJActivated',0]) isEqualTo 0"];
