#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, sleep_powder_spa
    CreateEmitter 0, 0, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W077B, BATTLE_SOUND_PAN_RIGHT, 4, 6
    Func_FadeBattlerSprite 8, 0, 2, BATTLE_COLOR_LIGHT_GREEN, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
