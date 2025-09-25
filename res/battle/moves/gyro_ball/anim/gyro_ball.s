#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 377
    PlayPannedSoundEffect SEQ_SE_DP_W360, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 40
    PlayPannedSoundEffect SEQ_SE_DP_W360C, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 258, 16, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_MoveBattler 258, -16, 8, 2
    Func_Shake 2, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
