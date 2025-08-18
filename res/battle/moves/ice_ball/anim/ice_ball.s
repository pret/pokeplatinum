#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 318
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W196, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 3
    CallFunc 65, 6, 0, 0, 0, 0, 14, 64
    CreateEmitter 0, 1, 3
    CallFunc 65, 6, 0, 0, 0, 0, 16, 64
    Delay 14
    CreateEmitter 0, 2, 4
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W280, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 2, 0, 1, 4, 264
    CallFunc 34, 6, 8, 0, 1, 32767, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
