#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, conversion_2_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 1, 1, 0, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_W112, 5, 4
    CreateEmitter 0, 2, 3
    PlayDelayedSoundEffectR SEQ_SE_DP_W104, 45
    PlayDelayedSoundEffectL SEQ_SE_DP_351, 65
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
