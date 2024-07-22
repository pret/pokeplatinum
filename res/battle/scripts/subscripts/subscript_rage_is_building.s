#include "macros/btlcmd.inc"

    .data

_000:
    // {0}’s rage is building!
    PrintMessage pl_msg_00000368_00363, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
