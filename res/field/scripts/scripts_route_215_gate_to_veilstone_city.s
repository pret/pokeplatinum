#include "macros/scrcmd.inc"
#include "res/text/bank/route_215_gate_to_veilstone_city.h"


    ScriptEntry Route215GateToVeilstoneCity_RuinManiac
    ScriptEntryEnd

Route215GateToVeilstoneCity_RuinManiac:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_USED_SECRETPOTION, Route215GateToVeilstoneCity_BlockingPokemonAreGone
    Message Route215GateToVeilstoneCity_Text_PokemonAreBlockingCelestic
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route215GateToVeilstoneCity_BlockingPokemonAreGone:
    Message Route215GateToVeilstoneCity_Text_BlockingPokemonAreGone
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
