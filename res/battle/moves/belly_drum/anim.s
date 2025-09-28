#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, belly_drum_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    Func_Shake 2, 0, 1, 8, 258
    PlayLoopedSoundEffect SEQ_SE_DP_W187, BATTLE_SOUND_PAN_LEFT, 8, 4
    BeginLoop 6
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
