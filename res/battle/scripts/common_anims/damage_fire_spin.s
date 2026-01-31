#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 113
    PlayPannedSoundEffect SEQ_SE_DP_W221B, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    BeginLoop 2
    Func_Shake 1, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
