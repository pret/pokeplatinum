#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 165
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_W213, BATTLE_SOUND_PAN_RIGHT
    Delay 15
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
