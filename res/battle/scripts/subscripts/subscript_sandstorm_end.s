#include "macros/btlcmd.inc"

    .data

_000:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SANDSTORM_TEMP
    // The sandstorm subsided.
    PrintMessage pl_msg_00000368_00806, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
