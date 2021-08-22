//Slay No More's Fishing script: (tweaked to make work appropriately with HS)
//V0.2 Fixed players able to spam the addaction, also fixed the area "finder" (players can no longer fish from a helicopter or any other vehicle, MUST be in the water! and on foot! ~ with wire)

player removeAction playerfishingaddaction;
sleep 0.1;

playerfishingaddaction = player addAction ["<t size='1.0' font='RobotoCondensed' color='#099cb6'>Fish</t>",{

[] spawn {
player setvariable ["FishingScriptActivated",1,true];
  _Check_magazines = magazines player;
  _Check_items = items player;
if ("herl_ma_wire" in _Check_items || "herl_ma_wire" in _Check_magazines) then {
player playmove "AinvPknlMstpSnonWnonDnon_medic4";
hint "You start fishing...";
sleep 10;
_random = random 1;
if (_random > 0.35) then {
playsound "additemok";
hint "You caught a fish!";
_type = selectrandom ["herl_eat_Fish","herl_eat_Fish"];
player additem _type;
sleep 2;
player setvariable ["FishingScriptActivated",0,true];
} else {
playsound "additemfailed";
hintsilent "You didn't catch anything...";
sleep 2;
player setvariable ["FishingScriptActivated",0,true];
};
} else {
  playsound "additemfailed";
  hint "You need wire to attempt fishing...";
  sleep 2;
  player setvariable ["FishingScriptActivated",0,true];
};
};
 },
 [],5000,
 false,
 false,
 "",
"(getPosASLW player select 2) < 0) && (player getVariable ['FishingScriptActivated',0]) isEqualTo 0  || ((underwater player) && (player getVariable ['FishingScriptActivated',0]) isEqualTo 0 || (vehicle player isKindOf 'Ship') && (player getVariable ['FishingScriptActivated',0]) isEqualTo 0"];
