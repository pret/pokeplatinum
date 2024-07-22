#include "macros/btlcmd.inc"

    .data

_000:
    // {0} can’t use {1} after the taunt!
    PrintMessage pl_msg_00000368_00613, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
