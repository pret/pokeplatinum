#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, conversion_spa
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W112, BATTLE_SOUND_PAN_LEFT, 2, 4
    PlayDelayedSoundEffect SEQ_SE_DP_351, BATTLE_SOUND_PAN_LEFT, 42
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
