//NVcrafting by: TenuredCLOUD v0.2

player removeAction playerNVGcraftaddaction;
sleep 0.1;

playerNVGcraftaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'color='#7f00e0'>Craft NVGs 'VERY HARD'</t>",{

[] spawn {
player setvariable ["NVGcraftActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_wire" in _Check_items && "herl_ma_wirecu" in _Check_items && "herl_o_pliers" in _Check_items && "herl_pager" in _Check_items && "herl_mb_battery" in _Check_items && "herl_o_handyc" in _Check_items
&& "herl_o_screwd_b" in _Check_items && "herl_o_screwd_a" in _Check_items
&& "herl_o_multim" in _Check_items && "herl_u_syslaptop" in _Check_items && "herl_u_laptop" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You attempt to craft some NVG's...";
sleep 25;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You crafted a pair of NVG's!";
_type = selectrandom ["CUP_NVG_PVS14","CUP_NVG_PVS14"];
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_pager";
player removeitem "herl_mb_battery";
player removeitem "herl_o_handyc";
player removeitem "herl_u_syslaptop";
player removeitem "herl_u_laptop";
sleep 0.1;
player addItem _type; // << With BIGGER craft-able's make sure they're added lastly IED needs to be smaller 8/10/21
sleep 2;
player setvariable ["NVGcraftActivated",0,true];
} else {
playsound "additemfailed";
hintsilent "You failed to craft a pair of NVG's...";
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_pager";
player removeitem "herl_mb_battery";
player removeitem "herl_o_handyc";
player removeitem "herl_u_syslaptop";
player removeitem "herl_u_laptop";
player playmove "Acts_Ambient_Facepalm_2";
sleep 2;
player setvariable ["NVGcraftActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "No crafting materials...";
  player playmove "Acts_Ambient_Facepalm_2";
  sleep 2;
  player setvariable ["NVGcraftActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_Workbench_01_F') && (player getVariable ['NVGcraftActivated',0]) isEqualTo 0"];
