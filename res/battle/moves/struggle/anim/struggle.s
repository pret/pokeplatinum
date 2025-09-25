#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, struggle_spa
    Func_Flail 0
    PlayLoopedSoundEffect SEQ_SE_DP_001, BATTLE_SOUND_PAN_LEFT, 2, 4
    Delay 15
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
