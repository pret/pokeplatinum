#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, belly_drum_spa
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W187, 8, 4
    BeginLoop 6
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
