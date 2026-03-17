#include "macros/scrcmd.inc"
#include "res/text/bank/maniac_tunnel.h"


    ScriptEntry _0010
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    SetFlag FLAG_FIRST_ARRIVAL_RUIN_MANIAC_CAVE
    End

_0010:
    NPCMessage 0
    End

    .balign 4, 0
