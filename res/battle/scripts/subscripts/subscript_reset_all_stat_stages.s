#include "macros/btlcmd.inc"

    .data

_000:
    ResetAllStatChanges 
    // All stat changes were eliminated!
    PrintMessage pl_msg_00000368_00817, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
