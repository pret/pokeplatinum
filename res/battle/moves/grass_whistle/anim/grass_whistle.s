#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    LoadParticleResource 0, 337
    CallFunc 33, 5, 0, 1, 0, 8, 11252
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 24, 18, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W320, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 8, 0, 11252
    WaitForAnimTasks
    End

L_2:
    LoadParticleResource 0, 337
    CallFunc 33, 5, 0, 1, 0, 8, 11252
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 24, 18, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W320, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 8, 0, 11252
    WaitForAnimTasks
    End
