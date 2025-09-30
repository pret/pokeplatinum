#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, shadow_ball_spa
    CreateEmitter 0, 4, 0
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W028, 0, 2, 12
    Delay 55
    CreateEmitter 0, 2, 0
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 8, 255, 0, 262144
    CreateEmitter 0, 3, 4
    Func_Shake 2, 0, 1, 2, 264
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_DARK_PURPLE, 14, 0
    PlayPannedSoundEffect SEQ_SE_DP_480, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
