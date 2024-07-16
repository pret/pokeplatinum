#include "macros/btlcmd.inc"

    .data

_000:
    // {0} is no longer disabled!
    PrintMessage pl_msg_00000368_00369, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
