#include "macros/btlcmd.inc"

    .data

_000:
    // {0}’s encore ended!
    PrintMessage pl_msg_00000368_00375, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
