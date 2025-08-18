#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 70
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 57, 4, 2, -14, 8, 258
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU2, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 5
    CallFunc 34, 6, 8, 0, 1, 31764, 10, 0
    CallFunc 36, 5, 1, 0, 1, 1, 264
    PlayDelayedSoundEffect SEQ_SE_DP_W004, BATTLE_SOUND_PAN_RIGHT, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 8, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
