#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 335
    PlayPannedSoundEffect SEQ_SE_DP_W016, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 0, 0, 0, 0
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 0, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W234, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W016
    StopSoundEffect SEQ_SE_DP_W234
    End
