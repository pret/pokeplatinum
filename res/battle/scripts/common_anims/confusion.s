#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 27
    PlayLoopedSoundEffect SEQ_SE_DP_W146, BATTLE_SOUND_PAN_LEFT, 4, 4
    CreateEmitter 0, 5, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, 8256, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
