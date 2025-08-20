#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 182
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlayPannedSoundEffect SEQ_SE_DP_W044, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_185, BATTLE_SOUND_PAN_RIGHT, 5
    Delay 5
    Func_Shake 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
