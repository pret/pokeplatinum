#include "macros/btlcmd.inc"


_000:
    // {0} is paralyzed! It can’t move!
    PrintMessage pl_msg_00000368_00130, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_PARALYZED
    Wait 
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
