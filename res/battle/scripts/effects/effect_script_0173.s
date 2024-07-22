#include "macros/btlcmd.inc"

    .data

_000:
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BTLSCR_ATTACKER
    Wait 
    GetTerrainMove 
    // {0} turned into {1}!
    PrintMessage pl_msg_00000368_00490, TAG_MOVE_MOVE, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GoToMoveScript FALSE
