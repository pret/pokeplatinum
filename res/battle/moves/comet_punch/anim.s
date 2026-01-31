#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, comet_punch_spa
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    BeginLoop 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_030
    Delay 6
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
