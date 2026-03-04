#include "macros/scrcmd.inc"
#include "res/text/bank/route_209_lost_tower_1f.h"


    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _0027
    ScriptEntryEnd

_000E:
    SetFlag FLAG_FIRST_ARRIVAL_LOST_TOWER
    End

_0014:
    NPCMessage 0
    End

_0027:
    NPCMessage 1
    End

    .balign 4, 0
