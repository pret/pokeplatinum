#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 304
    PlayPannedSoundEffect SEQ_SE_DP_W287, BATTLE_SOUND_PAN_LEFT
    Func_FadeBg 0, 1, 0, 12, 32767
    WaitForAnimTasks
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    Delay 30
    PlayPannedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 32767
    WaitForAnimTasks
    End
