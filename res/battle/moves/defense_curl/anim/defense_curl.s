#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, defense_curl_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W161, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_166, BATTLE_SOUND_PAN_LEFT, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
