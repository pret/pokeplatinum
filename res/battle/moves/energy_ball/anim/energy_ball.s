#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 429
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_211, BATTLE_SOUND_PAN_LEFT
    Delay 30
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 3
    CallFunc 65, 6, 0, 0, 0, 0, 17, 64
    Delay 16
    PlayPannedSoundEffect SEQ_SE_DP_402, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CallFunc 34, 6, 8, 0, 1, 11252, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
