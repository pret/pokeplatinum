#include "macros/btlcmd.inc"

    .data

_000:
    // {0} blew away {1}!
    PrintMessage pl_msg_00000368_01042, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
