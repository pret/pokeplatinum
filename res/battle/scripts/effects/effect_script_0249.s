#include "macros/btlcmd.inc"


_000:
    TryToxicSpikes _010
    // Poison spikes were scattered all around your team’s feet!
    BufferMessage pl_msg_00000368_01063, TAG_NONE_SIDE_CONSCIOUS, BTLSCR_ATTACKER_ENEMY
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION
    End 

_010:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
