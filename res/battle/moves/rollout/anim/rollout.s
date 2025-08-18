#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    LoadParticleResource 0, 223
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CallFunc 57, 4, 2, 14, -8, 258
    CreateEmitter 0, 2, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, 0, 2, 6
    Delay 20
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, 223
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CallFunc 57, 4, 2, 14, -8, 258
    CreateEmitter 0, 2, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, 0, 2, 6
    Delay 20
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
