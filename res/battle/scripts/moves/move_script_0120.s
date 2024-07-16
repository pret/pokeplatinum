#include "macros/btlcmd.inc"

    .data

_000:
    IncrementGameRecord BTLSCR_ATTACKER, BATTLER_TYPE_SOLO_PLAYER, RECORD_USED_SELFDESTRUCT
    GoToEffectScript 
