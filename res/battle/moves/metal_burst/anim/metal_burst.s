#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 385
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W368, 0, 3, 8
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 30
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W209, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 4
    Func_Shake 2, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
