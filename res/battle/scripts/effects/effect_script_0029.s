#include "macros/btlcmd.inc"


_000:
    SetMultiHit 0, SYSCTL_MULTI_HIT_MOVE
    UpdateVar OPCODE_SET, BTLVAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    CalcCrit 
    CalcDamage 
    End 
