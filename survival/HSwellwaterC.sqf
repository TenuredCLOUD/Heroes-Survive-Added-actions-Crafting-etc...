//Well filling by: TenuredCLOUD v0.1

player removeAction playerwellwaterCaddaction;
sleep 0.1;

playerwellwaterCaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Fill Canteen</t>",{

[] spawn {
player getVariable ["wellwaterCActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_u_Canteen" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You send the bucket down the well for some water...";
sleep 25;
_random = random 1;
if (_random > 0.60) then {
playsound "additemok";
hint "You fill your canteen with well water, the water smells foul, and looks dirty.";
_type = selectrandom ["herl_ma_Canteen","herl_ma_Canteen"];
player additem _type;
player removeItem "herl_u_Canteen";
sleep 5;
player getVariable ["wellwaterCActivated",0,true];
} else {
  playsound "additemok";
  hint "You fill your canteen with well water, the water smells foul, and looks dirty.";
  _type = selectrandom ["herl_ma_Canteen","herl_ma_Canteen"];
  player additem _type;
  player removeItem "herl_u_Canteen";
sleep 5;
player getVariable ["wellwaterCActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have a canteen that needs to be filled...";
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_StoneWell_01_F') && (player getVariable ['wellwaterCActivated',0]) isEqualTo 0"];
