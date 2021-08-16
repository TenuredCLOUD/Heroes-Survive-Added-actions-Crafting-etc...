//jerry can boiling by: TenuredCLOUD v0.1

player removeAction playerboilwaterJFaddaction;
sleep 0.1;

playerboilwaterJFaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Boil water in JerryCan</t>",{

[] spawn {
player getVariable ["boilwaterJFActivated",1,true];
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
sleep 5;
player getVariable ["boilwaterJFActivated",0,true];
} else {
  playsound "additemok";
  hint "You boiled the water in a Jerrycan, it is now safe to drink.";
  _type = selectrandom ["herl_u_cawater","herl_u_cawater"];
  player removeItem "herl_ma_cawaterd";
  sleep 0.1;
  player additem _type;
  sleep 5;
  player getVariable ["boilwaterJFActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have a JerryCan that needs boiling...";
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'FirePlace_burning_F') && (player getVariable ['boilwaterJFActivated',0]) isEqualTo 0"];
