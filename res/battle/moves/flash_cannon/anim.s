#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, flash_cannon_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT, 3, 10
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 6, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 7, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 90
    PlayLoopedSoundEffect SEQ_SE_DP_161, BATTLE_SOUND_PAN_RIGHT, 2, 2
    CreateEmitter 0, 0, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_400, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 2, 0, 1, 2, 264
    CreateEmitter 0, 1, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
