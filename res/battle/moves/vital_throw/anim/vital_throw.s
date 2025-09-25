#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, vital_throw_spa
    CallFunc 30, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W233, BATTLE_SOUND_PAN_LEFT, 22, 3
    Delay 66
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
