#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, earthquake_spa
    Func_Earthquake 0
    Delay 2
    PlaySoundEffectC SEQ_SE_DP_W089
    CreateEmitter 0, 0, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
