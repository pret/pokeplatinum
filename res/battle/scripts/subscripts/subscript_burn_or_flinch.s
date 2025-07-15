#include "macros/btlcmd.inc"


_000:
    CheckEffectActivation _003
    Call BATTLE_SUBSCRIPT_BURN

_003:
    CheckEffectActivation _007
    Call BATTLE_SUBSCRIPT_FLINCH_MON

_007:
    End 
