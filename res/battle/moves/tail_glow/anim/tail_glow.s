#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, tail_glow_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1376, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT, 24, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
