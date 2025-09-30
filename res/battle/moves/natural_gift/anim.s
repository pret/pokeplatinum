#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, natural_gift_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    PlaySoundEffectL SEQ_SE_DP_W363
    PlayDelayedSoundEffectL SEQ_SE_DP_REAPOKE, 40
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
