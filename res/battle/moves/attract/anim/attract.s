#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, attract_spa
    CreateEmitter 0, 0, 4
    CallFunc 25, 0
    Func_FadeBattlerSprite 8, 0, 2, 23199, 14, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W204, BATTLE_SOUND_PAN_RIGHT, 8, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
