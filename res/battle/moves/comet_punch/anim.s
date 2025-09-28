#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, comet_punch_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    BeginLoop 4
    Func_Shake 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Delay 6
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
