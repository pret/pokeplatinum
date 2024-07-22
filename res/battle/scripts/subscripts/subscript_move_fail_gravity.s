#include "macros/btlcmd.inc"

    .data

_000:
    // {0} can’t use {1} because of gravity!
    PrintMessage pl_msg_00000368_01001, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
