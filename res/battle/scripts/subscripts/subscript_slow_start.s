#include "macros/btlcmd.inc"

    .data

_000:
    // {0} can’t get it going because of its {1}!
    PrintMessage pl_msg_00000368_01112, TAG_NICKNAME_ABILITY, BTLSCR_MSG_TEMP, BTLSCR_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
