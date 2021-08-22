//craft FAK by: TenuredCLOUD v0.2

player removeAction playercraftfirstaidaddaction;
sleep 0.1;

playercraftfirstaidaddaction = player addAction ["<t size='1.0' font='RobotoCondensed'>Craft first aid kit</t>",{

[] spawn {
player setVariable ["craftfirstaidActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_dspray" in _Check_items && "herl_mb_bandage" in _Check_items) then {
hint "You start to disinfect the bandages...";
sleep 5;
_random = random 1;
if (_random > 0.50) then {
playsound "additemok";
hint "You crafted a first aid kit, and you have disinfectant spray to spare!";
_type = selectrandom ["herl_u_FirstAidKit","herl_u_FirstAidKit"];
player removeitem "herl_mb_bandage";
sleep 0.1;
player additem _type;
sleep 2;
player setVariable ["craftfirstaidActivated",0,true];
} else {
  playsound "additemok";
  hint "You crafted a first aid kit, but you used the last of the disinfectant spray...";
  _type = selectrandom ["herl_u_FirstAidKit","herl_u_FirstAidKit"];
  player removeitem "herl_ma_dspray";
  player removeitem "herl_mb_bandage";
  sleep 0.1;
  player additem _type;
  sleep 2;
  player setVariable ["craftfirstaidActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You don't have any bandages to make a first aid kit...";
  sleep 2;
  player setVariable ["craftfirstaidActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"('herl_ma_dspray' in items player) && (player getVariable ['craftfirstaidActivated',0]) isEqualTo 0"];
