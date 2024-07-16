#include "macros/btlcmd.inc"

    .data

_000:
    // {0} is frozen solid!
    PrintMessage pl_msg_00000368_00111, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_FROZEN
    Wait 
    End 
