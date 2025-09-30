#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sandstorm_spa
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    PlaySoundEffectC SEQ_SE_DP_W201
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
