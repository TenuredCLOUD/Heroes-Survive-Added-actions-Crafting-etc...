//Ghillie crafting by: TenuredCLOUD v0.1

player removeAction playerghilliecraftaddaction;
sleep 0.1;

playerghilliecraftaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Craft full Ghillie</t>",{

[] spawn {
player getVariable ["GhilliecraftActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_wire" in _Check_items && "herl_ma_wire" in _Check_items && "CUP_U_O_TK_Ghillie_Top" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You attempt to craft a Ghillie...";
sleep 25;
_random = random 1;
if (_random > 0.60) then {
playsound "additemok";
hint "You crafted a Ghillie, Nice job!";
_type = selectrandom ["CUP_IED_V4","CUP_IED_V4"];
player additem _type;
player removeItem "herl_ma_wire";
player removeitem "herl_o_CamoNet";
player removeitem "CUP_U_O_TK_Ghillie_Top";
sleep 5;
player getVariable ["GhilliecraftActivated",0,true];
} else {
playsound "additemfailed";
hintsilent "Crafting object failed...";
player removeItem "herl_ma_wire";
player removeitem "herl_o_CamoNet";
player removeitem "CUP_U_O_TK_Ghillie_Top";
player playmove "Acts_Ambient_Facepalm_2";
sleep 5;
player getVariable ["GhilliecraftActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "No crafting materials...";
  player playmove "Acts_Ambient_Facepalm_2";
};
};
 },
 [],5000,
 false,
 false,
 "",
"(cursorObject isKindOf 'Land_Workbench_01_F') && (player getVariable ['GhilliecraftActivated',0]) isEqualTo 0"];
