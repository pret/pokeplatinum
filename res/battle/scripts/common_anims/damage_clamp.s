#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 152
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_050, BATTLE_SOUND_PAN_LEFT
    Delay 10
    CreateEmitter 0, 2, 3
    PlayPannedSoundEffect SEQ_SE_DP_W011, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_LEFT, 13
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
