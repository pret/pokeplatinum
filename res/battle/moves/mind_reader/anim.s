#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, mind_reader_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W043, BATTLE_SOUND_PAN_RIGHT, 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
