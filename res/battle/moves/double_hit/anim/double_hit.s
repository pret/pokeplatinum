#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, double_hit_spa
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 2752, 1376, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 2752, 1376, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 2752, 1376, 0
    Func_Shake 2, 0, 1, 2, 264
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -2752, 1376, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -2752, 1376, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -2752, 1376, 0
    Func_Shake 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
