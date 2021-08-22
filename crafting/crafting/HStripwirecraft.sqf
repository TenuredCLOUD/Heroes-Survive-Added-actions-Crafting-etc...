//Tripwire craft mine crafting by: TenuredCLOUD v0.2

player removeAction playertripwMcraftaddaction;
sleep 0.1;

playertripwMcraftaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'color='#ffa500'>Craft Tripwire mine 'MODERATE'</t>",{

[] spawn {
player setvariable ["TminecraftActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_o_pliers" in _Check_items && "herl_o_multim" in _Check_items && "herl_pager" in _Check_items && "herl_mb_battery" in _Check_items && "herl_ma_wire" in _Check_items && "herl_ma_wirecu" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You attempt to craft a bounding mine...";
sleep 25;
_random = random 1;
if (_random > 0.35) then {
playsound "additemok";
hint "You crafted a Bounding mine, Nice job!";
_type = selectrandom ["APERSTripMine_Wire_Mag","APERSTripMine_Wire_Mag"];
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_mb_battery";
player removeitem "herl_pager";
sleep 0.1;
player additem _type;
sleep 2;
player setvariable ["TminecraftActivated",0,true];
} else {
playsound "additemfailed";
hintsilent "Crafting object failed...";
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_mb_battery";
player removeitem "herl_pager";
player playmove "Acts_Ambient_Facepalm_2";
sleep 2;
player setvariable ["TminecraftActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "No crafting materials...";
  player playmove "Acts_Ambient_Facepalm_2";
  sleep 2;
  player setvariable ["TminecraftActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_Workbench_01_F') && (player getVariable ['TminecraftActivated',0]) isEqualTo 0"];
