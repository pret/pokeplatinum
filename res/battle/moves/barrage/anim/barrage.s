#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 163
    CreateEmitterEx 0, 1, 0, 3
    CallFunc 66, 6, 1, 0, 0, 0, 15, 64
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Delay 15
    CallFunc 68, 5, 0, 5, 1, 3, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
