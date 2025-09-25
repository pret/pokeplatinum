#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, crunch_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W044, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 2, 0, 1, 2, 264
    PlayDelayedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
