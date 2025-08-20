#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 178
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 2, 2, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W044, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W043, BATTLE_SOUND_PAN_RIGHT, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
