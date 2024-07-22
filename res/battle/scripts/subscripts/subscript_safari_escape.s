#include "macros/btlcmd.inc"

    .data

_000:
    // {0} is watching carefully!
    PrintGlobalMessage pl_msg_00000368_00849, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
