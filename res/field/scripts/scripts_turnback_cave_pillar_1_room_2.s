#include "macros/scrcmd.inc"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    Call _0014
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

_0014:
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    Return
