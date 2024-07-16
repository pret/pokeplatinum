#include "macros/btlcmd.inc"

    .data

_000:
    // {0} foresaw an attack!
    BufferMessage pl_msg_00000368_00472, TAG_NICKNAME, BTLSCR_ATTACKER
    GoToEffectScript 
