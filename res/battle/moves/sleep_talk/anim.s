#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sleep_talk_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 1, 1, 0, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W173B, 8, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
