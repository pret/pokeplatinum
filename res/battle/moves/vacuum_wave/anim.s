#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, vacuum_wave_spa
    PlaySoundEffectR SEQ_SE_DP_W015
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_140
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
