#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 436
    CallFunc 33, 5, 0, 1, 0, 12, 32767
    WaitForAnimTasks
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W419, BATTLE_SOUND_PAN_RIGHT
    Delay 12
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    CallFunc 34, 6, 8, 0, 1, 32767, 10, 10
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CallFunc 36, 5, 1, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 32767
    WaitForAnimTasks
    End
