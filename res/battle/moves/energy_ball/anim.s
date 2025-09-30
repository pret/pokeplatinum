#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, energy_ball_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_211, BATTLE_SOUND_PAN_LEFT
    Delay 30
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 17, 64
    Delay 16
    PlayPannedSoundEffect SEQ_SE_DP_402, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 4
    Func_Shake 1, 0, 1, 2, 264
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_LIGHT_GREEN, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
