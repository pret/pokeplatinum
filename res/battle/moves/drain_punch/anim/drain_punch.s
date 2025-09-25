#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, drain_punch_spa
    Func_FadeBg 0, 1, 0, 8, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_050, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 5, 2, 0, 0, 0, 0
    Delay 5
    Func_Shake 2, 0, 1, 2, 264
    Delay 5
    PlayLoopedSoundEffect SEQ_SE_DP_W152, 0, 2, 16
    Delay 5
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 8, 0, 0
    WaitForAnimTasks
    End
