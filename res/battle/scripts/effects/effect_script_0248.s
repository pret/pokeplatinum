#include "macros/btlcmd.inc"


_000:
    TrySuckerPunch _004
    CalcCrit 
    CalcDamage 
    End 

_004:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
