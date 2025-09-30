#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, gust_spa
    SetCameraProjection 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 8
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 8
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W239, BATTLE_SOUND_PAN_RIGHT
    Delay 15
    Func_Shake 3, 0, 1, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
