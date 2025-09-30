#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, lava_plume_spa
    PlayPannedSoundEffect SEQ_SE_DP_W436, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 3
    Func_Shake 2, 0, 1, 2, 288
    Delay 1
    JumpIfFriendlyFire L_1
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_FadeBattlerSprite 16, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_FadeBattlerSprite 4, 0, 1, BATTLE_COLOR_RED, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    JumpIfBattlerSide 0, L_2, L_3
    End

L_2:
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite 2056, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite 2064, 0, 1, BATTLE_COLOR_RED, 10, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite 2050, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite 2052, 0, 1, BATTLE_COLOR_RED, 10, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
    End
    End
