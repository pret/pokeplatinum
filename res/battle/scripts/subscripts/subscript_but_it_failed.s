#include "macros/btlcmd.inc"

    .data

_000:
    // But it failed!
    PrintMessage pl_msg_00000368_00796, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 
