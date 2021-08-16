//Ghillie SVD crafting by: TenuredCLOUD v0.1

player removeAction playersvdwrapcraftaddaction;
sleep 0.1;

playersvdwrapcraftaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Craft SVD camo wrap</t>",{

[] spawn {
player getVariable ["svdwrapcraftActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_wire" in _Check_items && "herl_o_CamoNet" in _Check_items) then {
player playmove "Acts_carFixingWheel";
hint "You attempt to craft a SVD camo wrap...";
sleep 25;
_random = random 1;
if (_random > 0.60) then {
playsound "additemok";
hint "You crafted a SVD camo wrap, Nice!";
_type = selectrandom ["CUP_SVD_camo_d","CUP_SVD_camo_g","CUP_SVD_camo_d_half","CUP_SVD_camo_g_half"];
player additem _type;
player removeItem "herl_ma_wire";
player removeitem "herl_o_CamoNet";
sleep 5;
player getVariable ["svdwrapcraftActivated",0,true];
} else {
playsound "additemfailed";
hintsilent "Crafting object failed...";
player removeItem "herl_ma_wire";
player removeitem "herl_o_CamoNet";
player playmove "Acts_Ambient_Facepalm_2";
sleep 5;
player getVariable ["svdwrapcraftActivated",0,true];
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
"(cursorObject isKindOf 'Land_Workbench_01_F') && (player getVariable ['svdwrapcraftActivated',0]) isEqualTo 0"];
