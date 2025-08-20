#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 134
    LoadParticleResource 1, 134
    CreateEmitter 1, 1, 4
    Delay 1
    CreateEmitterEx 0, 1, 0, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 13, 64
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 13
    PlayLoopedSoundEffect SEQ_SE_DP_W028B, BATTLE_SOUND_PAN_RIGHT, 3, 6
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
