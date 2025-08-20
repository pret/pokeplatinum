#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 252
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_LEFT
    Func_FadeBattlerSprite 2, 0, 1, 13311, 14, 0
    WaitForAnimTasks
    Func_FadeBattlerSprite 2, 0, 1, 32767, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
