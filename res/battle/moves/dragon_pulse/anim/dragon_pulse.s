#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 423
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W373, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 26, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 26, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 26, 0, 0, 0
    Delay 15
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W379, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 26, 20, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 26, 20, 0, 0
    Delay 10
    Func_Shake 4, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
