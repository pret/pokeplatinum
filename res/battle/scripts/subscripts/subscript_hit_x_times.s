#include "macros/btlcmd.inc"


_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_MULTI_HIT_SKIP_MESSAGE, _011
    // Hit {0} time(s)!
    PrintMessage pl_msg_00000368_00046, TAG_NUMBER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_011:
    End 
