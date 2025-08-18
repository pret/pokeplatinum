#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 213
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 34, 26, 0, 0
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    PlayPannedSoundEffect SEQ_SE_DP_W060, 0
    CallFunc 33, 5, 0, 1, 0, 12, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAnimTasks
    Delay 15
    CallFunc 34, 6, 2, 0, 1, 32767, 12, 0
    CallFunc 36, 5, 1, 0, 1, 2, 258
    CallFunc 34, 6, 2056, 0, 1, 32767, 12, 0
    CallFunc 34, 6, 2064, 0, 1, 32767, 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_W171, 0
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    PlayPannedSoundEffect SEQ_SE_DP_W060, 0
    CallFunc 33, 5, 0, 1, 0, 12, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAnimTasks
    Delay 15
    CallFunc 34, 6, 2, 0, 1, 32767, 12, 0
    CallFunc 36, 5, 1, 0, 1, 2, 258
    CallFunc 34, 6, 2050, 0, 1, 32767, 12, 0
    CallFunc 34, 6, 2052, 0, 1, 32767, 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_W171, 0
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
