#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, defense_curl_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlaySoundEffectL SEQ_SE_DP_W161
    PlayDelayedSoundEffectL SEQ_SE_DP_166, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
