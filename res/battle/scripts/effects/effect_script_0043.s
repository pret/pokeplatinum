#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_ADD, BTLVAR_CRITICAL_BOOSTS, 1
    CalcCrit 
    CalcDamage 
    End 
