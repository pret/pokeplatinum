#include "macros/btlcmd.inc"

    .data

_000:
    // {0} calmed down.
    PrintMessage pl_msg_00000368_00314, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
