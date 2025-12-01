#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mach_punch_spa
    PlaySoundEffectR SEQ_SE_DP_W010
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_W030
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
