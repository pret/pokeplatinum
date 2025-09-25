#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, healing_wish_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    Func_FadeBg 0, 0, 0, 12, 0
    WaitForAnimTasks
    Delay 30
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W361, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 0, 12, 0, 0
    WaitForAnimTasks
    End

L_2:
    Func_FadeBg 0, 0, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W361, BATTLE_SOUND_PAN_LEFT
    Delay 30
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 0, 12, 0, 0
    WaitForAnimTasks
    End
