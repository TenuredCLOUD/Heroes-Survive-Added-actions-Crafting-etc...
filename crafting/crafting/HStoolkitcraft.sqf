//rvg Toolkit crafting by: TenuredCLOUD v0.2

player removeAction playerrvgtoolkitcraftaddaction;
sleep 0.1;

playerrvgtoolkitcraftaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Assemble toolkit</t>",{

[] spawn {
player setvariable ["rvgtoolkitcraftActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_o_pliers" in _Check_items && "herl_o_screwd_b" in _Check_items && "herl_o_screwd_a" in _Check_items && "herl_o_DuctTape" in _Check_items
&& "herl_o_multim" in _Check_items && "herl_o_cbits" in _Check_items && "herl_o_screwd_c" in _Check_items && "herl_o_hammer" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You start assembling a toolkit";
sleep 25;
_random = random 1;
if (_random > 0.65) then {
playsound "additemok";
hint "You assembled a toolkit!";
_type = selectrandom ["rvg_toolkit","rvg_toolkit"];
player removeItem "herl_o_pliers";
player removeitem "herl_o_screwd_b";
player removeitem "herl_o_screwd_a";
player removeitem "herl_o_DuctTape";
player removeitem "herl_o_multim";
player removeItem "herl_o_cbits";
player removeItem "herl_o_screwd_c";
player removeitem "herl_o_hammer";
player addItem _type; //
sleep 2;
player setvariable ["rvgtoolkitcraftActivated",0,true];
} else {
  playsound "additemok";
  hint "You assembled a toolkit!";
  _type = selectrandom ["rvg_toolkit","rvg_toolkit"];
  player removeItem "herl_o_pliers";
  player removeitem "herl_o_screwd_b";
  player removeitem "herl_o_screwd_a";
  player removeitem "herl_o_DuctTape";
  player removeitem "herl_o_multim";
  player removeItem "herl_o_cbits";
  player removeItem "herl_o_screwd_c";
  player removeitem "herl_o_hammer";
  player addItem _type; //
  sleep 2;
  player setvariable ["rvgtoolkitcraftActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You do not have the materials to assemble a toolkit!";
  player playmove "Acts_Ambient_Facepalm_2";
  sleep 2;
  player setvariable ["rvgtoolkitcraftActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_Workbench_01_F') && (player getVariable ['rvgtoolkitcraftActivated',0]) isEqualTo 0"];
