#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mirror_coat_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlayPannedSoundEffect SEQ_SE_DP_W115, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
