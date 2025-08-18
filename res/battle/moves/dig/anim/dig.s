#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 121
    LoadParticleResource 1, 31
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CallFunc 67, 5, 2, 0, 0, 8, 10
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT, 2, 2
    Delay 10
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT, 2, 2
    Delay 10
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT, 2, 3
    Delay 45
    CallFunc 40, 2, 2, 1
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_2:
    CallFunc 67, 5, 2, 0, 0, -8, 2
    CallFunc 40, 2, 2, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    Delay 2
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 1, 1, 4
    CreateEmitter 1, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAnimTasks
    CallFunc 40, 2, 2, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
