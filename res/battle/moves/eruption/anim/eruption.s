#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 301
    CallFunc 33, 5, 0, 1, 0, 12, 2124
    WaitForAnimTasks
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 1, 3
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 262148
    PlayPannedSoundEffect SEQ_SE_DP_W153, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    CallFunc 42, 8, 258, 100, 80, 100, 160, 100, 1, 262148
    PlayDelayedSoundEffect SEQ_SE_DP_W153, BATTLE_SOUND_PAN_LEFT, 10
    WaitForAnimTasks
    BeginLoop 1
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 1, 3
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 262148
    WaitForAnimTasks
    CallFunc 42, 8, 258, 100, 80, 100, 160, 100, 1, 262148
    WaitForAnimTasks
    EndLoop
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    CallFunc 68, 5, 0, 5, 0, 4, 3
    CallFunc 34, 6, 8, 0, 3, 2124, 14, 0
    CallFunc 34, 6, 16, 0, 3, 2124, 14, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -6000, 1000, 4000
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 3, 0, 1, 15, 264
    CallFunc 36, 5, 3, 0, 1, 15, 272
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 6000, -2000, 4000
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 12000, 0, -4000
    Delay 3
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -10000, -1000, -4000
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -2000, -2000, 4000
    Delay 4
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 4000, -3000, 4000
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -5000, -4000, -4000
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 2124
    WaitForAnimTasks
    End
