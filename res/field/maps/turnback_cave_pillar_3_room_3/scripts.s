#include "macros/scrcmd.inc"


    ScriptEntry TurnbackCavePillar3Room3_OnTransition
    ScriptEntryEnd

TurnbackCavePillar3Room3_OnTransition:
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

TurnbackCavePillar3Room3_Unused:
    End

    .balign 4, 0
