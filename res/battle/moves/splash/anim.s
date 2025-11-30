#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, splash_spa
    Func_Splash
    BeginLoop 3
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    PlaySoundEffectL SEQ_SE_DP_023
    Delay 20
    EndLoop
    WaitForAnimTasks
    End
