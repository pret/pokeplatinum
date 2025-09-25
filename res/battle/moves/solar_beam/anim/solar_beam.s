#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 106
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 19, 3
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_SHUSHU, BATTLE_SOUND_PAN_LEFT
    Delay 20
    Func_FadeBattlerSprite 2, 0, 2, 13311, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

L_2:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 8, 3
    CreateEmitter 0, 9, 3
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W076B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 10, 4
    CreateEmitter 0, 11, 4
    CreateEmitter 0, 1, 4
    Delay 5
    Func_FadeBattlerSprite 8, 0, 2, 13311, 14, 0
    Func_Shake 4, 0, 1, 12, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
