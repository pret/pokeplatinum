#include "macros/btlcmd.inc"

    .data

_000:
    // {0} avoided the attack!
    PrintMessage pl_msg_00000368_00024, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 
