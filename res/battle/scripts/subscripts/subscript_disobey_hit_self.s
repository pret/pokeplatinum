#include "macros/btlcmd.inc"

    .data

_000:
    // {0} won’t obey!
    PrintMessage pl_msg_00000368_00829, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    // It hurt itself in its confusion!
    PrintMessage pl_msg_00000368_00797, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP
