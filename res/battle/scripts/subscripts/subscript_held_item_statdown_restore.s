#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} restored its status using its {1}!
    PrintMessage pl_msg_00000368_00905, TAG_NICKNAME_ITEM, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 
