#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 295
    CreateEmitter 0, 0, 3
    PlayPannedSoundEffect SEQ_SE_DP_W278, BATTLE_SOUND_PAN_LEFT
    Delay 10
    CallFunc 34, 5, 2, 0, 1, 32767, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
