#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 224
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 3
    PlayPannedSoundEffect SEQ_SE_DP_BRADE, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
