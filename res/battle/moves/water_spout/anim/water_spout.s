#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 340
    CallFunc 42, 8, 258, 100, 110, 100, 80, 100, 327681, 327685
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    CallFunc 42, 8, 258, 100, 100, 100, 120, 100, 1, 327685
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_LEFT
    Delay 5
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 20
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 1, 0, 1, 13, 264
    CallFunc 36, 5, 1, 0, 1, 13, 272
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
