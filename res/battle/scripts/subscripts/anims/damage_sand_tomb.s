#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 345
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W028, BATTLE_SOUND_PAN_LEFT, 2, 18
    Delay 10
    Func_FadeBattlerSprite 2, 0, 2, 797, 12
    Func_Shake 3, 0, 1, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
