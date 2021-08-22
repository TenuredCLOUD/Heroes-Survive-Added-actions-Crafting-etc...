//IED crafting by: TenuredCLOUD v0.2

player removeAction playerIEDLcraftaddaction;
sleep 0.1;

playerIEDLcraftaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'color='#e00000'>Craft Large IED 'HARD'</t>",{

[] spawn {
player setvariable ["IEDLcraftActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_wire" in _Check_items && "herl_ma_wirecu" in _Check_items && "herl_o_pliers" in _Check_items && "herl_pager" in _Check_items && "herl_mb_battery" in _Check_items && "herl_o_carbattery_a" in _Check_items && "herl_o_screwd_b" in _Check_items && "herl_o_screwd_a" in _Check_items
&& "herl_o_multim" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You attempt to craft a Large IED...";
sleep 25;
_random = random 1;
if (_random > 0.40) then {
playsound "additemok";
hint "You crafted a Large IED!";
_type = selectrandom ["CUP_IED_V4_M","CUP_IED_V4_M"];
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_pager";
player removeitem "herl_mb_battery";
player removeitem "herl_o_carbattery_a";
player addItem _type; // << With BIGGER craft-able's make sure they're added lastly IED needs to be smaller 8/10/21
sleep 2;
player setvariable ["IEDLcraftActivated",0,true];
} else {
playsound "additemfailed";
hintsilent "Crafting object failed...";
player removeItem "herl_ma_wire";
player removeitem "herl_ma_wirecu";
player removeitem "herl_pager";
player removeitem "herl_mb_battery";
player removeitem "herl_o_carbattery_a";
player playmove "Acts_Ambient_Facepalm_2";
sleep 2;
player setvariable ["IEDLcraftActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "No crafting materials...";
  player playmove "Acts_Ambient_Facepalm_2";
  sleep 2;
  player setvariable ["IEDLcraftActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_Workbench_01_F') && (player getVariable ['IEDLcraftActivated',0]) isEqualTo 0"];
