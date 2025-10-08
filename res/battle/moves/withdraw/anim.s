#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, withdraw_spa
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlaySoundEffectL SEQ_SE_DP_W029
    Delay 17
    PlayLoopedSoundEffectL SEQ_SE_DP_W145C, 3, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
