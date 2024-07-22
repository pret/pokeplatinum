#include "macros/btlcmd.inc"

    .data

_000:
    // Your team’s {0} wore off!
    BufferLocalMessage BTLSCR_MSG_TEMP, pl_msg_00000368_00288, TAG_MOVE, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
