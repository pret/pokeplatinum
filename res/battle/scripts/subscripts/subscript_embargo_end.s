#include "macros/btlcmd.inc"


_000:
    // {0} can use items again!
    PrintMessage pl_msg_00000368_01138, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_MOVE_EFFECTS_MASK, MOVE_EFFECT_EMBARGO
    End 
