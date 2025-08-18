#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 254
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    Delay 40
    PlayPannedSoundEffect SEQ_SE_DP_W179, BATTLE_SOUND_PAN_LEFT
    Delay 40
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 0, 3
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W115, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 5
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
