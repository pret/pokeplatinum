#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, conversion_spa
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_W112, 2, 4
    PlayDelayedSoundEffectL SEQ_SE_DP_351, 42
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
