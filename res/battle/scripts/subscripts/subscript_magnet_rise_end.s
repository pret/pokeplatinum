#include "macros/btlcmd.inc"


_000:
    // {0}’s electromagnetism wore off!
    PrintMessage pl_msg_00000368_01039, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_MOVE_EFFECTS_MASK, MOVE_EFFECT_MAGNET_RISE
    End 
