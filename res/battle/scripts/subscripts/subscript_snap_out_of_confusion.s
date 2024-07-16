#include "macros/btlcmd.inc"

    .data

_000:
    // {0} snapped out of confusion!
    PrintMessage pl_msg_00000368_00153, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
