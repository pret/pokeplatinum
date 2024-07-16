#include "macros/btlcmd.inc"

    .data

_000:
    // {0} was freed from {1}!
    PrintMessage pl_msg_00000368_00265, TAG_NICKNAME_MOVE, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
