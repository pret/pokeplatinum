#include "macros/scrcmd.inc"
#include "res/text/bank/old_chateau.h"


    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_FIRST_ARRIVAL_OLD_CHATEAU
    End

_0010:
    EventMessage 0
    End

    .balign 4, 0
