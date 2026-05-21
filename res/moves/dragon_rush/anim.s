#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, dragon_rush_spa
    PlaySoundEffectR SEQ_SE_DP_MUCHI
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W088
    Func_ShakeBg 0, 5, 0, 5, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W088
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
