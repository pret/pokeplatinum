#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} boosted the accuracy of its next move using its {1}!
    PrintMessage pl_msg_00000368_01157, TAG_NICKNAME_ITEM, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_SET, BTLSCR_MSG_TEMP, BATTLEMON_MICLE_BERRY, 1
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 
