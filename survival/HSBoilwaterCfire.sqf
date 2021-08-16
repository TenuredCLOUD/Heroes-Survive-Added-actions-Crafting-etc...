//Cantten boiling by: TenuredCLOUD v0.1

player removeAction playerboilwaterCFaddaction;
sleep 0.1;

playerboilwaterCFaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Boil water in canteen</t>",{

[] spawn {
player getVariable ["boilwaterCFActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_Canteen" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You Start to boil some water...";
sleep 25;
_random = random 1;
if (_random > 0.60) then {
playsound "additemok";
hint "You boiled the water in your canteen, it is now safe to drink.";
_type = selectrandom ["herl_dri_Canteen","herl_dri_Canteen"];
player additem _type;
player removeItem "herl_ma_Canteen";
sleep 5;
player getVariable ["boilwaterCFActivated",0,true];
} else {
  playsound "additemok";
  hint "You boiled the water in your canteen, it is now safe to drink.";
  _type = selectrandom ["herl_dri_Canteen","herl_dri_Canteen"];
  player additem _type;
  player removeItem "herl_ma_Canteen";
sleep 5;
player getVariable ["boilwaterCFActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have a canteen that needs boiling...";
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'FirePlace_burning_F') && (player getVariable ['boilwaterCFActivated',0]) isEqualTo 0"];
