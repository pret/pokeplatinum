#include "macros/btlcmd.inc"

    .data

_000:
    TryEncore _010
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} received an encore!
    PrintMessage pl_msg_00000368_00372, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30

_010:
    End 
