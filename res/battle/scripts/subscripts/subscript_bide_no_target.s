#include "macros/btlcmd.inc"


_000:
    // {0} unleashed energy!
    PrintMessage pl_msg_00000368_00335, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_ATTACKER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_MOVE_LOCKED
    // But there was no target...
    PrintMessage pl_msg_00000368_01234, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
