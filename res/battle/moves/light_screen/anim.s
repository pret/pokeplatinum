#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, light_screen_spa
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 0, 19
    PlayPannedSoundEffect SEQ_SE_DP_W115, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
