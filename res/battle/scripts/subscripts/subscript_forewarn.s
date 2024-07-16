#include "macros/btlcmd.inc"

    .data

_000:
    // {0}’s {1} alerted it to {2}!
    PrintMessage pl_msg_00000368_01109, TAG_NICKNAME_ABILITY_MOVE, BTLSCR_MSG_TEMP, BTLSCR_MSG_BATTLER_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
