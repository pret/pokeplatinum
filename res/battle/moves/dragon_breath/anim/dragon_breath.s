#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 242
    PlayLoopedSoundEffect SEQ_SE_DP_400, 0, 3, 6
    JumpIfBattlerSide 0, L_1, L_1
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 32, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 32, 1, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT
    Delay 15
    CallFunc 34, 5, 8, 0, 2, 31, 12
    CallFunc 36, 5, 2, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 8, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 8, 1, 0, 0
    WaitForLRX
    PlayPannedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT
    Delay 15
    CallFunc 34, 5, 8, 0, 2, 31, 12
    CallFunc 36, 5, 2, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
