#include "macros/btlcmd.inc"

    .data

_000:
    // {0} is trying to take its foe with it!
    PrintMessage pl_msg_00000368_00388, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_ON, BTLSCR_ATTACKER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_DESTINY_BOND
    End 
