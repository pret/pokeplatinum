#include "macros/scrcmd.inc"
#include "res/text/bank/route_212_gate_to_hearthome_city.h"


    ScriptEntry Route212GateToHearthomeCity_Reporter
    ScriptEntry Route212GateToHearthomeCity_Cameraman
    ScriptEntry Route212GateToHearthomeCity_Collector
    ScriptEntry Route212GateToHearthomeCity_Cowgirl
    ScriptEntryEnd

Route212GateToHearthomeCity_Reporter:
    NPCMessage Route212GateToHearthomeCity_Text_ContestsAreInteresting
    End

Route212GateToHearthomeCity_Cameraman:
    NPCMessage Route212GateToHearthomeCity_Text_GatesClosed
    End

Route212GateToHearthomeCity_Collector:
    NPCMessage Route212GateToHearthomeCity_Text_TraveledLongWay
    End

Route212GateToHearthomeCity_Cowgirl:
    NPCMessage Route212GateToHearthomeCity_Text_GivenPokemonPoffins
    End

    .balign 4, 0
