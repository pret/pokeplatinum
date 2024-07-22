#include "macros/btlcmd.inc"

    .data

_000:
    // Your team’s Lucky Chant wore off!
    PrintMessage pl_msg_00000368_01085, TAG_NONE_SIDE_CONSCIOUS, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
