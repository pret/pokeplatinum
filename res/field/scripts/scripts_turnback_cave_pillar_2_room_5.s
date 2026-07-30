#include "macros/scrcmd.inc"


    ScriptEntry TurnbackCavePillar2Room5_OnTransition
    ScriptEntryEnd

TurnbackCavePillar2Room5_OnTransition:
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End
