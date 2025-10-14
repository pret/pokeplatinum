#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, nasty_plot_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W118, 8, 5
    CreateEmitter 0, 7, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 6, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    PlayDelayedSoundEffectL SEQ_SE_DP_081, 65
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
