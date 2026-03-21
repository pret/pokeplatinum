#include "macros/scrcmd.inc"
#include "res/text/bank/route_208_gate_to_hearthome_city.h"


    ScriptEntry Route208GateToHearthomeCity_PokemonBreederM
    ScriptEntry Route208GateToHearthomeCity_MiddleAgedWoman
    ScriptEntry Route208GateToHearthomeCity_Clefairy
    ScriptEntryEnd

Route208GateToHearthomeCity_PokemonBreederM:
    NPCMessage Route208GateToHearthomeCity_Text_HearthomeCityIsAGreatPlace
    End

Route208GateToHearthomeCity_MiddleAgedWoman:
    NPCMessage Route208GateToHearthomeCity_Text_IfYouSayHearthomeISayContests
    End

Route208GateToHearthomeCity_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, Route208GateToHearthomeCity_Text_ClefairyCryPippii
    End

    .balign 4, 0
