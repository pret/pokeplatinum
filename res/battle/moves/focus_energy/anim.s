#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, focus_energy_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    Func_Shake 1, 0, 1, 4, 258
    Func_FadeBattlerSprite 2, 0, 2, BATTLE_COLOR_WHITE, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
