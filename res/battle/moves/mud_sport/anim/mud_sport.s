#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 317
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 327685
    WaitForAnimTasks
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    PlayPannedSoundEffect SEQ_SE_DP_W253, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    Func_ScaleBattlerSprite 258, 100, 80, 100, 160, 100, 1, 327685
    WaitForAnimTasks
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W253, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 262148
    WaitForAnimTasks
    Func_ScaleBattlerSprite 258, 100, 80, 100, 160, 100, 1, 262148
    PlayPannedSoundEffect SEQ_SE_DP_W253, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    EndLoop
    Delay 20
    PlayLoopedSoundEffect SEQ_SE_DP_W145, BATTLE_SOUND_PAN_LEFT, 4, 9
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 6000, -2000, 4000
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 12000, 0, -4000
    Delay 3
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -10000, -1000, -4000
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -6000, 1000, 4000
    Delay 5
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 4000, -1000, 3000
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 2000, -1500, 3000
    Delay 4
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -5000, 2000, -4000
    PlayPannedSoundEffect SEQ_SE_DP_W145B, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
