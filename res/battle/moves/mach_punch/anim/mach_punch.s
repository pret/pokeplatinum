#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 202
    PlayPannedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
