#include "macros/btlcmd.inc"

    .data

_000:
    FollowMe 
    // {0} became the center of attention!
    BufferMessage pl_msg_00000368_00484, TAG_NICKNAME, BTLSCR_ATTACKER
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION
    End 
