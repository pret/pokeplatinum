#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0}’s {1} cured its poison!
    PrintMessage pl_msg_00000368_00878, TAG_NICKNAME_ITEM, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    SetHealthbarStatus BTLSCR_MSG_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    UpdateMonData OPCODE_SET, BTLSCR_MSG_TEMP, BATTLEMON_STATUS, MON_CONDITION_NONE
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 
