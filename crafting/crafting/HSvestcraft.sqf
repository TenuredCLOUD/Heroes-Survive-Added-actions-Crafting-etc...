//Camo vest lvl1 crafting by: TenuredCLOUD v0.2

player removeAction playercamovestcraftaddaction;
sleep 0.1;

playercamovestcraftaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'color='#ffa500'>Craft camo vest 'MODERATE'</t>",{

[] spawn {
player setvariable ["camovestcraftActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_wire" in _Check_items && "herl_ma_wirecu" in _Check_items && "herl_o_CamoNet" in _Check_items && "herl_u_CFire" in _Check_items && "herl_u_Rope" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You attempt to craft a vest...";
sleep 25;
_random = random 1;
if (_random > 0.35) then {
playsound "additemok";
hint "You crafted a vest!";
_type = selectrandom ["rvg_tacvest_2","rvg_tacvest_2"];
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_o_CamoNet";
player removeitem "herl_u_CFire";
player removeItem "herl_u_Rope";
sleep 0.1;
player additem _type;
sleep 2;
player setvariable ["camovestcraftActivated",0,true];
} else {
playsound "additemfailed";
hintsilent "Crafting object failed...";
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_o_CamoNet";
player removeitem "herl_u_CFire";
player removeItem "herl_u_Rope";
player playmove "Acts_Ambient_Facepalm_2";
sleep 2;
player setvariable ["camovestcraftActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "No crafting materials...";
  player playmove "Acts_Ambient_Facepalm_2";
  sleep 2;
  player setvariable ["camovestcraftActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_Workbench_01_F') && (player getVariable ['camovestcraftActivated',0]) isEqualTo 0"];
