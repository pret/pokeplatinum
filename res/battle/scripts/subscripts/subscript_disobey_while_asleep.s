#include "macros/btlcmd.inc"

    .data

_000:
    WaitButtonABTime 15
    // {0} ignored orders while asleep!
    PrintMessage pl_msg_00000368_00825, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
