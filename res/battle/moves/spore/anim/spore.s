#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 169
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite 8, 0, 3, 11252, 10, 10
    PlayLoopedSoundEffect SEQ_SE_DP_W077B, BATTLE_SOUND_PAN_RIGHT, 3, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
