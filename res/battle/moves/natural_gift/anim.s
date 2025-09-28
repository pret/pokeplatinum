#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, natural_gift_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    PlayPannedSoundEffect SEQ_SE_DP_W363, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_REAPOKE, BATTLE_SOUND_PAN_LEFT, 40
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
