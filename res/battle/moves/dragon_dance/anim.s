#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, dragon_dance_spa
    CreateEmitter 0, 0, 3
    Func_FadeBattlerSprite 2, 0, 3, 31, 10, 10
    Func_Shake 2, 0, 1, 16, 258
    PlayLoopedSoundEffect SEQ_SE_DP_W379, BATTLE_SOUND_PAN_LEFT, 4, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
