#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, nasty_plot_spa
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W118, 8, 5
    CreateEmitter 0, 7, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 5, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 6, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    PlayDelayedSoundEffectL SEQ_SE_DP_081, 65
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
