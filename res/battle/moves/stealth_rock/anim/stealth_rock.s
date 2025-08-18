#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 463
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 0, 0, 3
    CallFunc 66, 6, 0, 8, -3, 0, 12, 64
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 1, 0, 3
    CallFunc 66, 6, 1, 4, -5, 0, 12, 64
    Delay 5
    CreateEmitter 0, 1, 20
    CallFunc 36, 5, 1, 0, 1, 6, 264
    CallFunc 36, 5, 1, 0, 1, 6, 272
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 2, 0, 3
    CallFunc 66, 6, 2, 0, -6, 0, 12, 64
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 3, 0, 3
    CallFunc 66, 6, 3, -8, -6, 0, 12, 64
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 4, 0, 3
    CallFunc 66, 6, 4, -4, -3, 0, 12, 64
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
