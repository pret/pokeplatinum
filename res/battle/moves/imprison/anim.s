#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, imprison_spa
    PlaySoundEffectR SEQ_SE_DP_050
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    BeginLoop 1
    Delay 12
    PlaySoundEffectR SEQ_SE_DP_W030
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
