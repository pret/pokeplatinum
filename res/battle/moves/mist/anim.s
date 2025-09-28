#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, mist_spa
    Func_FadeBg 0, 1, 0, 12, 32767
    PlayLoopedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT, 4, 3
    CreateEmitter 0, 0, 19
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 60
    Func_FadeBattlerSprite 4, 0, 1, 32767, 10, 60
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 32767
    WaitForAnimTasks
    End
