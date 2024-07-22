#include "macros/btlcmd.inc"

    .data

_000:
    PrintAttackMessage 
    Wait 
    Call BATTLE_SUBSCRIPT_RECOVER_HP
    // {0}’s stockpiled effect wore off!
    PrintMessage pl_msg_00000368_00994, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
