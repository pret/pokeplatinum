#include "macros/btlcmd.inc"


_000:
    // {0} is confused!
    PrintMessage pl_msg_00000368_00150, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_CONFUSED
    Wait 
    // It hurt itself in its confusion!
    PrintMessage pl_msg_00000368_00797, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    CheckHoldOnWith1HP BTLSCR_ATTACKER
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    End 
