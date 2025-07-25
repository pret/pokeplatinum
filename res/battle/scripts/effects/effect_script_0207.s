#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_HIT_DURING_FLY
    CalcCrit 
    CalcDamage 
    End 
