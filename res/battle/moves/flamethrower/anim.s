#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, flamethrower_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W053, BATTLE_SOUND_PAN_RIGHT
    Delay 50
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 14, 258
    Delay 3
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_RED, 10, 25
    Func_Shake 2, 0, 1, 14, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    End
