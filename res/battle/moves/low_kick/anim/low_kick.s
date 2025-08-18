#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 97
    PlayPannedSoundEffect SEQ_SE_DP_007, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
