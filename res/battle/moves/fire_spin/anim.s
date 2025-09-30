#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, fire_spin_spa
    PlayPannedSoundEffect SEQ_SE_DP_W221B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_FadeBattlerSprite 8, 0, 2, BATTLE_COLOR_RED, 10, 10
    Func_Shake 1, 0, 1, 8, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
