#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 198
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    BeginLoop 2
    CallFunc 33, 5, 0, -2, 0, 8, 32767
    WaitForAnimTasks
    CallFunc 33, 5, 0, -2, 8, 0, 32767
    WaitForAnimTasks
    EndLoop
    PlayPannedSoundEffect SEQ_SE_DP_W179, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Delay 40
    CallFunc 33, 5, 0, -2, 0, 8, 32767
    WaitForAnimTasks
    CallFunc 33, 5, 0, -2, 8, 0, 32767
    WaitForAnimTasks
    CallFunc 57, 4, 4, 24, 0, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 1, 0, 1, 3, 264
    CallFunc 57, 4, 4, -24, 0, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
