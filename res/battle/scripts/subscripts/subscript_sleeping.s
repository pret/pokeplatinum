#include "macros/btlcmd.inc"


_000:
    // {0} is fast asleep.
    PrintMessage pl_msg_00000368_00299, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_ASLEEP
    Wait 
    End 
