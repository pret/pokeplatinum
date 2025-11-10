#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bug_buzz_spa
    PlayLoopedSoundEffectL SEQ_SE_DP_W405, 16, 2
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    Delay 5
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
