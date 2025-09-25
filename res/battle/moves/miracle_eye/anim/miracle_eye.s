#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, miracle_eye_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 2, 4
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_183, BATTLE_SOUND_PAN_LEFT
    Delay 25
    Func_FadeBattlerSprite 8, 0, 1, 32767, 10, 25
    PlayPannedSoundEffect SEQ_SE_DP_210, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
