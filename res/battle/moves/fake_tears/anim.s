#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fake_tears_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Func_Flail FLAIL_MODE_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W039, 8, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
