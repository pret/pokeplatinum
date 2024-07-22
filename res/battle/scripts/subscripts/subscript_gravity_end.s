#include "macros/btlcmd.inc"

    .data

_000:
    // Gravity returned to normal!
    PrintMessage pl_msg_00000368_01004, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
