#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} cured its {2} status using its {1}!
    PrintMessage pl_msg_00000368_00893, TAG_NICKNAME_ITEM_STATUS, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_ATTRACT
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 
