#include "macros/btlcmd.inc"


_000:
    TryBreakScreens _015
    UpdateVar OPCODE_SET, BTLVAR_MOVE_EFFECT_CHANCE, 1
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // It shattered the barrier!
    PrintMessage pl_msg_00000368_00606, TAG_NONE
    Wait 
    WaitButtonABTime 30
    GoTo _022

_015:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_DID_NOT_HIT, _022
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION

_022:
    End 
