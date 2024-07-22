#include "macros/btlcmd.inc"

    .data

_000:
    // {0} must recharge!
    PrintMessage pl_msg_00000368_00360, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
