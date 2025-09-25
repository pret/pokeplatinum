#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, leer_spa
    JumpIfContest L_1
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, -4128, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, -4128, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, -4128, 0, 0
    Delay 10
    Func_Shake 1, 0, 1, 2, 264
    Func_Shake 1, 0, 1, 2, 272
    PlayPannedSoundEffect SEQ_SE_DP_W043, BATTLE_SOUND_PAN_LEFT
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, 4128, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, 4128, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, 4128, 0, 0
    Delay 10
    Func_Shake 1, 0, 1, 2, 264
    Func_Shake 1, 0, 1, 2, 272
    PlayPannedSoundEffect SEQ_SE_DP_W043, BATTLE_SOUND_PAN_LEFT
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
