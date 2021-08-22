//Well filling by: TenuredCLOUD v0.2

player removeAction playerwellwaterJaddaction;
sleep 0.1;

playerwellwaterJaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Fill JerryCan</t>",{

[] spawn {
player setVariable ["wellwaterJActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_u_cawatere" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You send the bucket down the well for some water...";
sleep 25;
_random = random 1;
if (_random > 0.60) then {
playsound "additemok";
hint "You fill your Jerrycan with well water, the water smells foul, and looks dirty.";
_type = selectrandom ["herl_ma_cawaterd","herl_ma_cawaterd"];
player removeItem "herl_u_cawatere";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["wellwaterJActivated",0,true];
} else {
  playsound "additemok";
  hint "You fill your Jerrycan with well water, the water smells foul, and looks dirty.";
  _type = selectrandom ["herl_ma_cawaterd","herl_ma_cawaterd"];
  player removeItem "herl_u_cawatere";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["wellwaterJActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have a Jerrycan that needs to be filled...";
  sleep 2;
  player setVariable ["wellwaterJActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_StoneWell_01_F') && (player getVariable ['wellwaterJActivated',0]) isEqualTo 0"];
