#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, gust_spa
    SetCameraProjection 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 0, 0, 0, 8
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 0, 0, 0, 8
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W239
    Delay 15
    Func_Shake 3, 0, 1, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
