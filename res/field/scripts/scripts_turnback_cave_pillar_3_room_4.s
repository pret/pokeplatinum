#include "macros/scrcmd.inc"


    ScriptEntry TurnbackCavePillar3Room4_OnTransition
    ScriptEntryEnd

TurnbackCavePillar3Room4_OnTransition:
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

TurnbackCavePillar3Room4_Unused:
    End

    .balign 4, 0
