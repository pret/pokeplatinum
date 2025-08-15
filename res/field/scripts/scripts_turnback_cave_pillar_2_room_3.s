#include "macros/scrcmd.inc"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

TurnbackCavePillar2Room3_Unused:
    End

    .balign 4, 0
