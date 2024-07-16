#include "macros/btlcmd.inc"

    .data

_000:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_HAILING_TEMP
    // The hail stopped.
    PrintMessage pl_msg_00000368_00812, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
