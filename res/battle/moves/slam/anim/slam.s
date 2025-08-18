#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 51
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 57, 4, 2, 14, 4, 258
    Delay 1
    CallFunc 57, 4, 2, -14, -4, 264
    WaitForAnimTasks
    CallFunc 57, 4, 2, -14, -4, 258
    CallFunc 57, 4, 4, 14, 4, 264
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
