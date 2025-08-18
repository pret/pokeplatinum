#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 71
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU2, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 8, 2
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 0, 4
    CallFunc 57, 4, 2, -14, 8, 258
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU2, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 8, 2
    CallFunc 34, 6, 8, 0, 1, 31764, 10, 0
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayDelayedSoundEffect SEQ_SE_DP_W004, BATTLE_SOUND_PAN_RIGHT, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W004, BATTLE_SOUND_PAN_RIGHT, 6
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
