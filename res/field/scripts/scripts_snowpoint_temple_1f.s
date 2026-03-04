#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_temple_1f.h"


    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_FIRST_ARRIVAL_SNOWPOINT_TEMPLE
    End

_0010:
    EventMessage 0
    End

SnowpointTemple1F_Unused:
    End
    
    .balign 4, 0
